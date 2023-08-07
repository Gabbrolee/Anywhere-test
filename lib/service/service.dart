
import 'package:dio/dio.dart';

import '../models/api_model/characters_model.dart';

final dio = Dio();

class ApiServices {
  Future<Character> getCharacters() async {
    final response = await dio.get('https://dart.dev');
    return Character.fromJson(response.data);
  }
}
