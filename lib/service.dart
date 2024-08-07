import 'dart:convert';

import 'package:http/http.dart' as http;
class GetApi
{
  static Future<List<dynamic>> getData() async
  {
    final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if(response.statusCode==200)
    {
      return jsonDecode(response.body);

    }
    else
    {
      throw Exception('Failed to load Data');
    }
  }
}