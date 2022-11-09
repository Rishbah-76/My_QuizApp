import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';
import 'package:quiz_app/quiz_app_question_screen.dart';

class MyQuizApp extends StatelessWidget {
  const MyQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          "Start Quiz",
          style: TextStyle(color: backgroundColor),
        ),
        centerTitle: true,
        backgroundColor: foregroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Quiz App",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w500,
                color: foregroundColor,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlayQuizScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: foregroundColor),
              child: const Text(
                "Take Quiz",
                style: TextStyle(color: backgroundColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
