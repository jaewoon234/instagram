import 'dart:html';

import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('snack bar'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            final snackBar=SnackBar(content: Text('hello!'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('ElvatedButton'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15, color: Colors.white)),
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
      ),
    ),
    );
  }


}

