import 'package:flutter/material.dart';

//main() is the first method that execute first
void main() {
  runApp(
   MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("I am Rich"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Image(
            image: AssetImage("images/diamond.png"),
          ),
        ),
      ),
    );
  }
}

// for hot reload to work... we had to have things that we want to change
// either inside stateless widget or stateful widget

// hot reload vs hot restart
//
// hot reload -> preserve  state (e.g.  10  will remain as it is..)
//
// hot restart- > reset the state of the app