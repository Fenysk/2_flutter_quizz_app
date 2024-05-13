import 'package:flutter/material.dart';
import 'package:quizz_app/models/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question 1',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            direction: Axis.vertical,
            spacing: 10,
            children: [
              AnswerButton(
                answerText: 'Réponse 1',
                onTap: () {},
              ),
              AnswerButton(
                answerText: 'Réponse 2',
                onTap: () {},
              ),
              AnswerButton(
                answerText: 'Réponse 3',
                onTap: () {},
              ),
              AnswerButton(
                answerText: 'Réponse 4',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
