import 'package:flutter/material.dart';

class Question01 extends StatefulWidget {
  const Question01({super.key});

  @override
  State<Question01> createState() {
    // TODO: implement createState
    return _Question01();
  }
}

class _Question01 extends State<Question01> {
  @override
  Widget build(context) {
    // TODO: implement build
    return const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         
          Text(
            'Learn Flutter',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), 
                fontSize: 24),
          ),
        
        ],
      );
  }
}
