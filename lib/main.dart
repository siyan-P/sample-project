import 'package:dementia_care/pages/screen_splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dementia care App',
      theme: ThemeData(
  
     // primaryColor: Colors.white,
      ),
      // 
    //  theme: ThemeData(scaffoldBackgroundColor: Colors.white.withOpacity(100)),
      home: const screen_splash(),
    );
  }
}

