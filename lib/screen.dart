import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final PageController pageController = PageController();
  bool isAnswerlocked = false;
  int currentindex = 0, correctanswers = 0, wronganswers = 0;
  String correctanswer = "", selectedanswer = "";

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
          onTap: () {
            if (isAnswerlocked) {
              if (selectedanswer == correctanswer) {
                correctanswers++;
              } else {
                wronganswers++;
              }
              currentindex++;

              if (currentindex != quizQuestions.length) {
                pageController.jumpToPage(currentindex);
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreen(
                              correctanswer: correctanswers,
                              wronganswer: wronganswers,
                            )));
              }
            } else {
              print("Please select an answer");
            }
          },
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
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          itemCount: quizQuestions.length,
          itemBuilder: (context, index) {
            QuizQuestionModal model = quizQuestions[index];
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
                      model.question,
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
                        model.options.length,
                        (index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isAnswerlocked = true;
                                    selectedanswer = model.options[index];
                                    correctanswer = model.correctanswers;
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color:
                                          selectedanswer == model.options[index]
                                              ? foregroundColor
                                              : backgroundColor,
                                      border:
                                          Border.all(color: foregroundColor),
                                      borderRadius: BorderRadius.circular(10)),
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.all(14),
                                  child: Text(
                                    model.options[index],
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
