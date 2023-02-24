import 'package:flutter/material.dart';
import 'package:todo/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'To-Do',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Home(),
    );
  }
}

