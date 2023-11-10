import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'toast message',
      theme: ThemeData(
        primarySwatch: Colors.blue
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
        title: Text('Toast message'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            flutterToast();
          },
          child: Text('Toast'),
        ),
      ),

    );
  }
}

void flutterToast(){
  Fluttertoast.showToast(msg: 'Flutter',
    gravity: ToastGravity.BOTTOM_LEFT,
    backgroundColor: Colors.red,
    fontSize: 50.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_LONG
  );
}




