import 'package:flutter/material.dart';
import 'package:task4/screens/homepage.dart';
import 'package:task4/screens/loginpage.dart';
import 'package:task4/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
