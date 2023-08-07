import 'package:http/http.dart' as http;

// class ApiServices{
//   final endpoint = "https://reqres.in/api/users?page=2";
//
//   Future<List<UserModel>> getUser() async{
//     http.Response response = await http.get(Uri.parse(endpoint));
//     if(response.statusCode == 200){
//       final List result = jsonDecode(response.body)['data'];
//       return result.map(((e) => UserModel.fromJson(e))).toList();
//     }else {
//       throw Exception(response.reasonPhrase);
//     }
//   }
// }
//
// final userProvider = Provider<ApiServices>((ref)=> ApiServices());

// Future<void> fetchData() async {
//   final response = await http.get('YOUR_API_URL_HERE'); // Replace with your API URL
//
//   if (response.statusCode == 200) {
//     final data = json.decode(response.body);
//
//     for (var topic in data['RelatedTopics']) {
//       var iconUrl = topic['Icon']['URL'];
//
//       if (iconUrl.isNotEmpty) {
//         print('Image URL: $iconUrl');
//       }
//     }
//   } else {
//     print('Failed to load data');
//   }
// }
