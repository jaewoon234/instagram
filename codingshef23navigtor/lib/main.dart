import 'package:codingshef23navigtor/color_schemes.g.dart';
import "package:get/get.dart";
import 'package:flutter/material.dart';
//import 'package:push_named/ScreenA.dart';
import 'package:codingshef23navigtor/ScreenA.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';
import 'Screenc.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
      ),
      routes: {
        '/':(context) => ScreenA(),
        '/b':(context) => ScreenB(),
        '/c':(context) => ScreenC()
      },
    );
  }
}
