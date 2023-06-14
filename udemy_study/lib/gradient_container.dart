import 'package:flutter/material.dart';
import 'package:udemy_study/sytle_text.dart';
import 'package:udemy_study/DiceRoller.dart';

const startAlignment1 = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
//********************변수*****************//
  final Color color1;
  final Color color2;
  final String textInput;
//*****************constructor***************//
   const GradientContainer(this.color1, this.color2, this.textInput,
      {super.key});   // 부모 틀래스의 key 를 그대로 사용
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: startAlignment1,
            end: endAlignment),
      ),
      child: const Center(
          child: DiceRoller()
      ),
    );
  }
}
