import 'package:flutter/material.dart';
import 'package:homework/vazifa_1.dart';

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyWidget());
  }
}
