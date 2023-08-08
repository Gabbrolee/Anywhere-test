import 'package:dio/dio.dart';

import '../models/api_model/characters_model.dart';
import 'dart:convert' as convert;

final dio = Dio();

class ApiServices {
  Future<Character> getCharacters() async {
    final response = await dio
        .get("http://api.duckduckgo.com/?q=simpsons+characters&format=json");
    var jsonResponse =
        convert.jsonDecode(response.data) as Map<String, dynamic>;

    return Character.fromJson(jsonResponse);
  }
}
