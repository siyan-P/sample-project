import 'package:flutter/material.dart';

class screen_home extends StatelessWidget {
  const screen_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: SafeArea(
              child: Text(
      "sry page under constraction",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    )),
        ));
  }
}
