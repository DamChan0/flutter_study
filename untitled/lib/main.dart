import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient :LinearGradient(
              colors: [
                Color.fromARGB(0, 206, 8, 255),
                Color.fromARGB(0, 242, 226, 246)]
              
            ),
        ),
        child: const Center(
            child: Text("안녕하세요",
            style: TextStyle(height: 0, fontSize: 50),)
        ),
      ),
      bottomNavigationBar: BottomAppBar(height: 30),
    ));
  }
}
