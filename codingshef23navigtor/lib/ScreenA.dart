import 'package:codingshef23navigtor/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ScreenB.dart';

void main() => runApp(ScreenA());

class ScreenA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('ScreenA'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/b');
            },
            child: Text('Go to ScreenB'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/c');
              },
                child: Text('Go to ScreenC'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red),
              ),
            FloatingActionButton.extended(
                onPressed: (){
                  Get.to(ScreenB());

                }, label: Text('label'))
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.explore),
            label: 'explore',),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: 'Commute',),
          NavigationDestination(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',),
        ],
      ),
    );
  }
}

