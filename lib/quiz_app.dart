import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screen.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Quiz App",
              style: TextStyle(
                  color: foregroundColor,
                  fontSize: 45,
                  fontWeight: FontWeight.w600),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: foregroundColor),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizScreen()));
                },
                child: Text(
                  "Start Quiz",
                  style: TextStyle(color: backgroundColor),
                ))
          ],
        ),
      ),
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: foregroundColor,
        centerTitle: true,
        title: Text(
          "Start Quiz",
          style: TextStyle(color: backgroundColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
