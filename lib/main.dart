import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_app.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: QuizApp());
  }
}
