import 'package:flutter/material.dart';
import 'package:flutter_project/LoginRegister/HomePage_log_res.dart';
import 'package:flutter_project/view/Splash.dart';
import 'package:flutter_project/LoginRegister/Login_page.dart';
import 'package:flutter_project/LoginRegister/Register_page.dart';
import 'package:flutter_project/view/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Login(),
    );
  }
}
