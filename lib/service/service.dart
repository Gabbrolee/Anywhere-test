import 'package:dio/dio.dart';

import '../models/api_model/characters_model.dart';
import 'dart:convert' as convert;
import 'package:flutter_dotenv/flutter_dotenv.dart';

final dio = Dio();

class ApiServices {
  Future<Response> get() async {
    final baseUrl = dotenv.env['BASE_URL']!;
    final Response response = await dio.get(baseUrl);
    return response;
  }
}
