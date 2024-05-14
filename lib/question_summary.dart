import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map((data) {
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  color: data['isCorrectAnswer'] == true
                      ? Colors.green
                      : Colors.red,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['question'] as String,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(155, 0, 0, 0),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      data['correct_answer'] as String,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
