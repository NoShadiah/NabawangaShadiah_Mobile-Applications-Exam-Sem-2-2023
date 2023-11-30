import 'package:flutter/material.dart';
import 'package:studentapp/homeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student App',
      home: HomeScreen(title: 'Student App'),
      debugShowCheckedModeBanner: false,
    );
  }
}

