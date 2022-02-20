import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//main() is the first method that execute first
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage("images/my_pic.jpeg"),
              ),
              const SizedBox(
                width: double.infinity,
                height: 8.0,
              ),
              const Text("Priyanshu Maurya",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      fontFamily: 'Pacifico')),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    color: Colors.teal.shade200,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    fontFamily: 'SourceSansPro'),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 40.0,vertical: 8.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+911234567890"
                    ),
                  ),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 40.0,vertical: 8.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "priyanshumaurya.8868@gmail.com",

                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// taget -> https://drive.google.com/uc?export=download&id=1k7oW5qVLJqzw_lEFsOFS_qKmkGjBX1pL
