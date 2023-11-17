import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice =1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(32.0),
            child:Row(
              children: [
                Expanded(
                    child: Image.asset('image/dice$leftDice.png')),
                SizedBox(width: 20.0,),
                Expanded(
                    child: Image.asset('image/dice$rightDice.png')),
              ],
            ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
              ),
                onPressed: (){
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                });
                print('gg');
                showToast('Left dice : {$leftDice}, right dice : {$rightDice}');

                },
                child: const Icon(Icons.play_arrow),
            ),
          ],
        ),
      ),

    );
  }
}


void showToast(String message){
  Fluttertoast.showToast(msg: message,
  backgroundColor: Colors.white,
  toastLength: Toast.LENGTH_SHORT,
  gravity: ToastGravity.BOTTOM);
}