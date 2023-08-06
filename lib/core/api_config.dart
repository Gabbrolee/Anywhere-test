import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class ApiConfig<T> {
  static final String baseUrl = dotenv.env['BASE_URL'] ?? '';

  static Future<(String, int)> fetchData(T) async {
    await http.get(Uri.parse('$baseUrl?q=simpsons+characters&format=json'));
    return ('name', 3);
  }
}
