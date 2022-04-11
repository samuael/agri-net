import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
// import '../key.dart';

class Auth with ChangeNotifier {
  Future<void> signup(String email, String password) async {
    final url = Uri.parse(""); //'$urlAuth' + '$apiKey');
    final response = await http.post(url,
        body: json.encode({
          'email': email,
          'password': password,
          'returnSecureToken': true,
        }));
    print(json.decode(response.body));
  }

  Future<void> login(String email, String password) async {
    final url = Uri.parse('');
    final response = await http.post(url,
        body: json.encode({
          'email': email,
          'password': password,
          'returnSecureToken': true,
        }));
    print(json.decode(response.body));
  }
}
