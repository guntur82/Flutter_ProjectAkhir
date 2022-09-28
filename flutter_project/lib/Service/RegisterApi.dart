import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_project/Model/ModelGetUser.dart';
import 'package:http/http.dart' as http;

class RegisterApi {
  var client = http.Client();
  var baseUrl = "localhost:3000/api/";

  Future<ModelGetUser> register(String name, String email,String password, String no_hp, 
      String level, String alamat, BuildContext context) async {
    var uri = Uri.parse(baseUrl + "user").replace();
    Map<String, String> headers() {
      return {'Content-Type': 'application/json', 'Accept': 'application/json'};
    }

    var body = jsonEncode({
    "name":name,
    "email": email,
    "password":password,
    "no_hp":no_hp,
    "level":level,
    "alamat":alamat
    });
    print(body);
    try {
      final response = await client
          .post(uri, headers: headers(), body: body)
          .timeout(const Duration(seconds: 30));
      print(response.body);
      if (response.statusCode == HttpStatus.ok) {
        return ModelGetUser.fromJson(jsonDecode(response.body));
      } else {
        return ModelGetUser.withError("Gagal Load");
      }
    } on TimeoutException catch (_) {
      return ModelGetUser.withError('Waktu Habis');
    }
  }
}
