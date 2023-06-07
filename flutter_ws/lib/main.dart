import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('dkssud'),),
        body:
        Container( height: 30, width: double.infinity, decoration: BoxDecoration(color: Colors.black), margin:EdgeInsets.fromLTRB(10, 50
            , 40, 50),

          ),

        bottomNavigationBar: BottomAppBar(
          child: Container( height:70 ,width: 50, color: Colors.cyan,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_mail),

            ],
          ),
          )
        ),
      ),
    );
  }
}
