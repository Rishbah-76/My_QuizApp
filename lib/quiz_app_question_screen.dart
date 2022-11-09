import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';
import 'package:quiz_app/quiz_question_model.dart';
import 'package:quiz_app/result_screen.dart';

class PlayQuizScreen extends StatefulWidget {
  const PlayQuizScreen({super.key});

  @override
  State<PlayQuizScreen> createState() => _PlayQuizScreenState();
}

class _PlayQuizScreenState extends State<PlayQuizScreen> {
  final PageController pageController = PageController();
  bool isAnswered = false;
  int currentIndex = 0;
  String correctAnswer = "";
  String selectedAnswer = "";
  int correctAnswers = 0;
  int wrongAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: backgroundColor),
        backgroundColor: foregroundColor,
        title: const Text(
          "Quiz App",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: backgroundColor,
          ),
        ),
        centerTitle: true,
      ),
      body: PageView.builder(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: quizQuestions.length,
          itemBuilder: (context, index) {
            QuizQuestionModel model = quizQuestions[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      model.question,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: List.generate(
                      model.options.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isAnswered = true;
                              selectedAnswer = model.options[index];
                              correctAnswer = model.correctAnswer;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: foregroundColor,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: selectedAnswer == model.options[index]
                                  ? foregroundColor
                                  : backgroundColor,
                            ),
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.all(14),
                            child: Text(
                              model.options[index],
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
      bottomNavigationBar: InkWell(
        onTap: () {
          if (isAnswered) {
            //print(isAnswered);
            if (selectedAnswer == correctAnswer) {
              correctAnswers++;
            } else {
              wrongAnswer++;
            }
          } else {
            // print("Plase selecte an Option");
          }
          currentIndex++;
          if (currentIndex != quizQuestions.length) {
            pageController.jumpToPage(currentIndex);
          } else {
            // print("wait for result");
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        correctAnswer: correctAnswers,
                        wrongAnswer: wrongAnswer,
                      )),
            );
          }
          // print(currentIndex);
          // print(selectedAnswer);
          // print(correctAnswer);
        },
        child: Container(
          height: 65,
          alignment: Alignment.center,
          color: foregroundColor,
          child: const Text(
            "Next",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
