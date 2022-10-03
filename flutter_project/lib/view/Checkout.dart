import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class checkout extends StatefulWidget {
  const checkout({Key? key}) : super(key: key);

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title: Text(
            "Checkout",
            style: TextStyle(color: Colors.black),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/succes.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Image.asset(
              "assets/Success.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
