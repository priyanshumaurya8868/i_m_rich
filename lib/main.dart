import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: XylophonePage(),
      ),
    ),
  );
}

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key? key}) : super(key: key);



  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {

  Expanded coloredButton({required Color color , required int toneNumber}) =>
      Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0.0),
          ),
          onPressed: () {
            AudioCache player = AudioCache();
            player.play("note$toneNumber.wav");
          },
          child: Container(
            color:  color,
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          coloredButton(color : Colors.red, toneNumber: 1),
          coloredButton(color: Colors.orange,toneNumber: 2),
          coloredButton(color: Colors.yellow,toneNumber: 3),
          coloredButton(color : Colors.green, toneNumber: 4),
          coloredButton(color: Colors.blue,toneNumber: 5),
          coloredButton(color: Colors.indigoAccent,toneNumber: 6),
          coloredButton(color : Colors.purple, toneNumber: 7),

        ],
      ),
    );
  }
}
