import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade600,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left_dice = 1;
  int right_dice = 2;

  void shuffle(){
    left_dice = Random().nextInt(5)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.white,
              onPressed: (){
               setState(() {
                 shuffle();
               });
              },
              child: Image.asset("images/ball$left_dice.png"),
            ),
          ),
        ],
      ),
    );
  }
}
