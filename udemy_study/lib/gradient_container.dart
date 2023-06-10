import 'package:flutter/material.dart';
import 'package:udemy_study/sytle_text.dart';

const startAlignment1 = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String textInput;

  void rollDice() {}

  const GradientContainer(this.color1, this.color2, this.textInput,
      {super.key});

  // 부모 틀래스의 key 를 그대로 사용
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: startAlignment1,
            end: endAlignment),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-3.png',
            width: 200,
          ),
          const SizedBox(
            width: 50,
            height: 20,
            child: DecoratedBox(
                decoration: BoxDecoration(

            )),
          ),
          TextButton(
            onPressed: rollDice, // class 안에 정의된 별도의 함수 이름을 사용
            // () {}, //TextButten 안에서만 정의 되고 안에서만 사용되는 함수
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 30,
              ),
            ),
            child: const Text('주사위 돌리기'),
          )
        ],
      )),
    );
  }
}
