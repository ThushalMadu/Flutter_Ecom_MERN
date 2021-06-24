import 'package:bestarchi/Models/loginModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginService {
  static Future<Login> loginCalling(email, password) async {
    final response = await http.post(
      Uri.parse('https://aqueous-temple-31849.herokuapp.com/users/login'),
      headers: <String, String>{
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{"email": email, "password": password}),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return Login.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print(response);
      throw Exception('Failed to Login');
    }
  }
}
