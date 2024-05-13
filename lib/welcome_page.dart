import 'package:flutter/material.dart';

void startQuiz() {
  // ignore: avoid_print
  print('Le quiz commence !');
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 60),
          const Text(
            'Apprendre Flutter en s\'amusant !',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            child: const Text(
              'Commencer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
