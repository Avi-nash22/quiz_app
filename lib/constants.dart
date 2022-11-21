import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

const backgroundColor = Color.fromRGBO(45, 27, 3, 1);
const foregroundColor = Color.fromRGBO(244, 140, 6, 1);

List<QuizQuestionModal> quizQuestions = [
  QuizQuestionModal(
      question:
          "1. Flutter is mainly optimized for 2D mobile apps that can run on?",
      correctanswers: "Both A and B",
      options: ["Android", "iOS", "Both A and B", "None of the above"]),
  QuizQuestionModal(
      question:
          "2. It is very necessary to learn Dart language for building Flutter application?",
      correctanswers: "Yes",
      options: ["Yes", "No", "Can be Yes", "Can be No"]),
  QuizQuestionModal(
      question:
          "3. A widget that allows us to refresh the screen is called a ____________.",
      correctanswers: "Stateful widget",
      options: [
        "Stateless Widget",
        "Stateful Widget",
        "Statebuild Widget",
        "All of the above"
      ]),
  QuizQuestionModal(
      question: "4. The examples of the Stateless widget are?",
      correctanswers: "All of the above",
      options: ["Text", "Row", "Column", "All of the above"]),
  QuizQuestionModal(
      question: "4. pubspec.yaml file does not contain?",
      correctanswers: "Project language",
      options: [
        "Project general settings",
        "Project dependencies",
        "Project language",
        "Project assets"
      ])
];
