import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_question_model.dart';

const backgroundColor = Color.fromRGBO(45, 27, 3, 1);
const foregroundColor = Color.fromRGBO(244, 140, 6, 1);

List<QuizQuestionModel> quizQuestions = [
  QuizQuestionModel(
    question: "1. JSON Stands for",
    correctAnswer: "JavaScript Object Notation",
    options: [
      "JavaScript Object Notation",
      "JS Standard Object Name",
      "JavaScript Ouput Name",
      "Java Source Open Netowrk"
    ],
  ),
  QuizQuestionModel(
    question: "2. What is a group of crows called?",
    correctAnswer: "A Murder",
    options: ["A heap", "A Crew", "A Murder", "A herd"],
  ),
  QuizQuestionModel(
    question: "3. What is acrophobia a fear of?",
    correctAnswer: "Flying",
    options: ["Flying Solo", "Diving", "Speed", "Flying"],
  ),
  QuizQuestionModel(
    question: "4. What phone company produced the 3310?",
    correctAnswer: "Nokia",
    options: ["Symbian", "Android", "Nokia", "Java"],
  ),
  QuizQuestionModel(
    question: "5. What is the tallest type of tree? ",
    correctAnswer: "RedWood Tree",
    options: ["Dublin Tree", "RedWood Tree", "Heach Tree", "All Trees"],
  ),
  QuizQuestionModel(
    question: "6. Where did sushi originate?",
    correctAnswer: "China",
    options: [
      "China",
      "Japan",
      "Singapore",
      "Malaysia",
    ],
  ),
  QuizQuestionModel(
    question: "7. What country drinks the most coffee? ",
    correctAnswer: "Finland",
    options: ["GreenLand", "Sweden", "Finland", "Poland"],
  ),
  QuizQuestionModel(
    question: "8. What does FIFA stand for in English?",
    correctAnswer: "International Federation of Association Football",
    options: [
      "International Football of Association Footwork",
      "Indpenedent Federation of Association Footwork",
      "International Federation of All Football",
      "International Federation of Association Football"
    ],
  ),
  QuizQuestionModel(
    question: "9. What sporting event has a strict dress code of all white?",
    correctAnswer: "Wimbledon",
    options: ["Polo", "Wimbledon", "Golf", "F1"],
  ),
  QuizQuestionModel(
    question: "10. How many ghosts chase Pac-Man at the start of each game? ",
    correctAnswer: "4",
    options: ["4", "3", "5", "2"],
  ),
];
