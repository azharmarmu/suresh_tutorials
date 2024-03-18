import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

var baseUrl = 'https://jsonplaceholder.typicode.com';

Future<dynamic> getApi(String endpoint) async {
  try {
    var response =
        await http.get(Uri.parse('$baseUrl$endpoint')); //network call

    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body); //list or map
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future<Map<String, dynamic>?> postApi(String endpoint, dynamic body) async {
  try {
    var response = await http.post(
      Uri.parse('$baseUrl$endpoint'),
      body: body,
    ); //network call

    if (response.statusCode == 200 || response.statusCode == 201) {
      return convert.jsonDecode(response.body) as Map<String, dynamic>;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  } catch (e) {
    print(e);
    return null;
  }
}