import "package:flutter/material.dart";
import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'snack Bar',
    theme: ThemeData(
      primarySwatch: Colors.red
    ),
    home: MyPage()
    );

  }
}

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('snack Bar'),
    centerTitle: true,
    ),
    body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('show me'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('hello',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white
              ),
              ),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000),
              ),
          );
        },
      ),
    );
  }



  }

