import 'dart:convert';
import 'package:http/http.dart' as http;

import '../modal/usermodal.dart';

Future<List<userModal>> fetchData() async {
  final res =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  // final data = jsonDecode(res.body);
  if (res.statusCode == 200) {
    final List<dynamic> data = jsonDecode(res.body);
    print('data$data');

    return data.map((userJson) => userModal.fromJson(userJson)).toList();

    // return userModal.fromJson(data);
  } else {
    throw Exception('Failed to load user data');
  }
  // return data.map((userJson) => userModal.fromJson(userJson)).toList();

  // print('data$data');
  // return userModal.fromJson(data);
}
