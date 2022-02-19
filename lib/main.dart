import 'package:flutter/material.dart';

//main() is the first method that execute first
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("I am Rich!"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Image(
            image: AssetImage("images/diamond.png"),
          ),
        ),
      ),
    ),
  );
}
//centre: is the widget  that allow us to center the other widget/views
//materiaApp:  grand daddy of all  apps
