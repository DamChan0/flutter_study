import 'package:flutter/material.dart ';

class Sytledtext extends StatelessWidget {
  final String text;
  const Sytledtext(this.text, {super.key});

  @override
  Widget build(context){
    return  Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(200, 0, 0, 0),
        fontSize: 30,
      ),
    );
  }
}