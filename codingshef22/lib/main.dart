import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First page',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: FirstPage()
    );
  }
}
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('go to the Scond Page'),
          onPressed: (){
            Navigator.push(context2, MaterialPageRoute(
            builder: (_)=> SecondPage()));
            }),
    ),
        );
  }
}

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('go to the First Page'),
          onPressed: (){
            Navigator.pop(context);
          }),
        ),
      );
  }
}