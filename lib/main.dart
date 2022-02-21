import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
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
    left_dice = Random().nextInt(6)+1;
    right_dice = Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
               setState(() {
                 shuffle();
               });
              },
              child: Image.asset("images/dice$left_dice.png"),
            ),
          ),

          Expanded(
            child: FlatButton(
              onPressed: (){
               setState(() {
                 shuffle();
               });
              },
              child: Image.asset("images/dice$right_dice.png"),
            ),
          ),
        ],
      ),
    );
  }
}
