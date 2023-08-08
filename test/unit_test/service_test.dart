import 'package:anywhere/models/api_model/characters_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart'; // For creating mock objects
import 'package:dio/dio.dart';
import 'package:anywhere/service/service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('ApiService', (){
    TestWidgetsFlutterBinding.ensureInitialized();
    final baseUrl = dotenv.load(fileName: '.env_test');
     late ApiServices apiService;
     late MockDio mockDio;

    setUp(() {
      mockDio = MockDio();
      apiService = ApiServices();
    });

    test('getCharacters returns Character object', () async {

      final mockResponse = Response(
          data: {
        "FirstURL": "https://duckduckgo.com/Bleeding_Gums_Murphy",
        "Heading": "The Simpsons characters",
        "ImageHeight": 0,
      },
          statusCode: 200,
          requestOptions: RequestOptions(path: 'path'));
      when(mockDio.get(baseUrl.toString())).thenAnswer((realInvocation) async =>
          Future.value(mockResponse));

      //Act
      final result = await apiService.getCharacters();
      expect(result, isA<Character>());
    });
  });
}

