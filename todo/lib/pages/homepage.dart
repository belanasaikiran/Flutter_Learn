// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo/util/todo_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: Text("ToDo"),
          elevation: 0,
        ),
        body: ListView.builder(itemBuilder: itemBuilder)
        ));
  }
}
