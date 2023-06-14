// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:udemy_study/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: GradientContainer(
           Color.fromARGB(201, 153, 0, 255),
           Color.fromARGB(200, 91, 34, 28), "눈아파 씨발"),
    ));
  }
}
