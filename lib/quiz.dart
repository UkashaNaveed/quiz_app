import 'package:flutter/material.dart';
import 'package:quiz_app/model/data/question_data.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var currentScreen = 'start';
  List<String> selectedAnswer = [];

  void selectAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == question.length) {
      setState(() {
        currentScreen = 'result';
      });
    }
  }

  void switchScreen() {
    setState(() {
      currentScreen = 'question';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      currentScreen = 'question';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentWidget = StartScreen(switchScreen: switchScreen);
    if (currentScreen == 'question') {
      currentWidget = QuestionScreen(selectAnswer: selectAnswer);
    }
    if (currentScreen == 'result') {
      currentWidget = ResultScreen(
        chosenAnswer: selectedAnswer,
        onRestart: restartQuiz,
      );
    }
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 19, 190, 233),
              Color.fromARGB(255, 4, 55, 88),
            ],
          ),
        ),
        child: currentWidget,
      ),
    );
  }
}
