import 'package:flutter/material.dart';
import 'package:quizz_app/welcome_page.dart';
import 'package:quizz_app/question_screen.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/results_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  var activeScreen = 'welcome-page';

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-page';
      });
    }
  }

  void switchScreen() {
    selectedAnswers = [];

    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget;

    switch (activeScreen) {
      case 'question-screen':
        screenWidget = QuestionScreen(
          onSelectAnswer: chooseAnswer,
        );
        break;
      case 'results-page':
        screenWidget = ResultsPage(chosenAnswers: selectedAnswers);
        break;
      default:
        screenWidget = WelcomePage(switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.red,
                  Colors.orange,
                ]),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
