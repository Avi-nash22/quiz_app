import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/quiz_app.dart';
import 'package:quiz_app/screen.dart';

class ResultScreen extends StatelessWidget {
  int correctanswer, wronganswer;

  ResultScreen(
      {Key? key, required this.correctanswer, required this.wronganswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: backgroundColor),
        centerTitle: true,
        backgroundColor: foregroundColor,
        title: Text(
          "Result",
          style: TextStyle(color: backgroundColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                answerTab("Correct Answer", correctanswer),
                answerTab("Wrong Answer", wronganswer),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: foregroundColor),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => QuizScreen()),
                      (route) => false);
                },
                child: Text(
                  "Reset Quiz",
                  style: TextStyle(color: backgroundColor),
                ))
          ],
        ),
      ),
    );
  }
}

Widget answerTab(String title, int value) {
  return Column(
    children: [
      Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      Text(
        "$value",
        style: TextStyle(
            color: foregroundColor, fontSize: 60, fontWeight: FontWeight.bold),
      )
    ],
  );
}
