// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Homepage(), theme: ThemeData(primarySwatch: Colors.yellow));
  }
}
