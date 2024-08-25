import 'package:colormixingproject/Pages/HomePage.dart';
import 'package:colormixingproject/Pages/Intro.dart';
import 'package:colormixingproject/Pages/start.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "IntroPage" : (context) => const IntroPage(),
        "HomePage" : (context) => const HomePage(),
        "startPage" : (context) => const startPage()
      },
      home:  const IntroPage(),
    );
  }
}