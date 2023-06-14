import 'dart:math';
import 'package:flutter/material.dart';


final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
// _ 는 비공개 라는 의미
class _DiceRollerState extends State<DiceRoller> {
  int currentDice = 3 ;
  var Diceimage = 'assets/images/dice-3.png';

  void rollDice() {
    int currentDice = randomizer.nextInt(6)+1 ; //nextInt(max) >> 0~ max 상성
    setState(() {
      Diceimage = 'assets/images/dice-${currentDice}.png';
    });

    print('Change Dice to $currentDice');
  }

  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          Diceimage,
          width: 200,
        ),
        const SizedBox(
          width: 50,
          height: 20,
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
        ),
      ],
    );



  }
}