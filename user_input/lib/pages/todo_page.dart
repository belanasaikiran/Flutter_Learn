// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //text editing controller to get acess to what the user typed
  TextEditingController myController = TextEditingController();

//greeting message variable
  String greetingMessage = "";

  // greet user method
  void greetUser() {
    String username = myController.text;
    setState(() {
      greetingMessage = "hello, $username";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage, style: TextStyle(fontSize: 16)),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Type your name here..."),
              ),

              // button
              ElevatedButton(
                onPressed: greetUser,
                child: Text("Tap"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
