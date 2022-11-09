import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';
import 'package:quiz_app/quiz_app_question_screen.dart';

class ResultScreen extends StatelessWidget {
  final int correctAnswer, wrongAnswer;
  const ResultScreen(
      {super.key, required this.correctAnswer, required this.wrongAnswer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: foregroundColor,
        iconTheme: const IconThemeData(color: backgroundColor),
        title: const Text(
          "Result",
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                answerTab("Correct Answer", correctAnswer),
                answerTab("Wrong Answer", wrongAnswer),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlayQuizScreen(),
                  ),
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                  //foregroundColor: foregroundColor,
                  backgroundColor: foregroundColor),
              child: const Text(
                "Reset Quiz",
                style: TextStyle(
                  color: backgroundColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget answerTab(String title, int value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "$value",
          style: const TextStyle(
            color: foregroundColor,
            fontSize: 50,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
