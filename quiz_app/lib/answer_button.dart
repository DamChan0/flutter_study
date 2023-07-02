import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final void Function() onTap;
  const AnswerButton({
    super.key,
    required this.answer,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) { 
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: Color.fromARGB(0, 221, 1, 173),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(40))
      ),
      child: Text(answer),
      // style: ElevatedButton.styleFrom(shape: LinearBorder.start()),
    );
  }
}
