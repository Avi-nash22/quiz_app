import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: backgroundColor),
          centerTitle: true,
          backgroundColor: foregroundColor,
          title: Text(
            "Play Quiz",
            style:
                TextStyle(color: backgroundColor, fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBar: InkWell(
          onTap: () {},
          child: Container(
            height: 70,
            alignment: Alignment.center,
            color: foregroundColor,
            child: Text(
              "Next",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: backgroundColor),
            ),
          ),
        ),
        body: PageView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "This is a question",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: List.generate(
                        4,
                        (index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: foregroundColor),
                                      borderRadius: BorderRadius.circular(10)),
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.all(14),
                                  child: Text(
                                    "Option 1",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            )),
                  )
                ],
              ),
            );
          },
        ));
  }
}
