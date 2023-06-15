import 'package:flutter/material.dart';

const String backgrouind = 'assets/images/quiz-logo.png';

class MainPage extends StatelessWidget {
  const MainPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.62, //필수 매개변수
            child: Image.asset(
              backgrouind,
              width: 500,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Learn Flutter',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: 
              startQuiz
            , // class 안에 정의된 s별도의 함수 이름을 사용
            // () {}, //TextButten 안에서만 정의 되고 안에서만 사용되는 함수
            style: OutlinedButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('quiz'),
          )
        ],
      ),
    );
  }
}
