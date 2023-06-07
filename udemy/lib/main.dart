// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(0, 58, 86, 212),
              Color.fromARGB(248, 199, 18, 42),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
          child: Text(
            "안녕 나는 담챤이야",
            style: TextStyle(
              color: Color.fromARGB(149, 69, 29, 189),
              fontSize: 25,
            ),
          ),
        ),
      ),
    ));
  }
}

class  