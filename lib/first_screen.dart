import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_change/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('This is first screen'),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => SecondScreen(
                screenData: 'data from first screen',
              ),
              ),
            );
          },
          
          child: Text('Go to second'))
        ],
      )),
    );
  }
}