import 'package:flutter/material.dart';

class Whislist extends StatefulWidget {
  const Whislist({Key? key}) : super(key: key);

  @override
  State<Whislist> createState() => _WhislistState();
}

class _WhislistState extends State<Whislist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 150),
          child: Center(
            child: Text("Whislist Page"),
          )),
    );
  }
}
