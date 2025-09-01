import 'package:flutter/material.dart';
import "package:second_quiz_app/questions/quetions_data.dart";
import "package:second_quiz_app/widgets/quiz_button.dart";

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen(this.questionsNumber, this.switchFunction, {super.key});

  final int questionsNumber;

  final Function(String answer) switchFunction;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              questionsList[questionsNumber].theQuestion,
              style: const TextStyle(
                fontFamily: "Loretta",
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          ...questionsList[questionsNumber].questionsShuffle().map(
            (item) => QuizButton(item, switchFunction),
          ),
        ],
      ),
    );
  }
}
