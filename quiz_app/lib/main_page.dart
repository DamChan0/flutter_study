import 'package:flutter/material.dart';

const String backgrouind = 'assets/images/quiz-logo.png';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void quizStart() {}

  @override
  Widget build(context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
      child: Center(
        child: Column(
          children: [
          Image.asset(
          backgrouind,
            height: 500,
        ),
          const SizedBox(
            width: 30,
            height: 50,
          ),

          TextButton(
            onPressed: quizStart, // class 안에 정의된 s별도의 함수 이름을 사용
            // () {}, //TextButten 안에서만 정의 되고 안에서만 사용되는 함수
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 30,
              ),
            ),
            child: const Text('quiz'),
          )
          ],
        ),
      ),
    );
  }
}
