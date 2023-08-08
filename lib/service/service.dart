import 'package:dio/dio.dart';

import '../models/api_model/characters_model.dart';
import 'dart:convert' as convert;
import 'package:flutter_dotenv/flutter_dotenv.dart';

final dio = Dio();

class ApiServices {
  Future<Character> getCharacters() async {
    final baseUrl = dotenv.env['BASE_URL']!;
    final response = await dio.get(baseUrl);
    var jsonResponse =
        convert.jsonDecode(response.data) as Map<String, dynamic>;

    return Character.fromJson(jsonResponse);
  }
}
