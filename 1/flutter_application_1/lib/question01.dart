import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer_button.dart';
import 'package:flutter_application_1/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var cuurentQuestion = 0;

  void currentQestionIndex() {
    setState(() {
      cuurentQuestion++;
    });
    if (cuurentQuestion == 6) {
      cuurentQuestion = 0;
    }
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[cuurentQuestion];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answer: answer, onTap: currentQestionIndex);
            }),
          ],
        ),
      ),
    );
  }
}
