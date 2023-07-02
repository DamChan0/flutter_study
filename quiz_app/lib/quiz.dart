import 'package:flutter/material.dart';
import 'package:quiz_app/main_page.dart';
import 'package:quiz_app/question01.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  var quizStart = 'start-screen';
  // @override
  // void initState() {
  //   quizStart = 'start-screen';
  //   //함수를 객체로 사용할 때 초기화
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      quizStart = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = MainPage(switchScreen);

    if(quizStart == 'question-screen'){
    screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 48, 2, 63),
              Color.fromARGB(200, 190, 0, 255),
            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
