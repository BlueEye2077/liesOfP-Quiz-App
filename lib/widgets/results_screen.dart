import 'package:flutter/material.dart';
import 'package:second_quiz_app/questions/quetions_data.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:second_quiz_app/widgets/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.answersList,this.restartFunc, {super.key});

  final List answersList;
  final void Function() restartFunc;

  @override
  Widget build(BuildContext context) {
    int correctAnswersCounter = 0;

    for (var i = 0; i < answersList.length; i++) {
      if (answersList[i]["user-answer"] == answersList[i]["right-answer"]) {
        correctAnswersCounter++;
      }
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "You Answerd ${correctAnswersCounter.toString()} Correct Out Of ${questionsList.length}",
            style: const TextStyle(
              fontFamily: "Loretta",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),

          QuestionsSummary(answersList),
          const SizedBox(height: 30,),
        FilledButton.icon(
            onPressed: restartFunc,
            label: const Text(
              "Restart Quiz",
              style: TextStyle(color: Color.fromARGB(239, 255, 255, 255)),
            ),
            icon: const Icon(Icons.restart_alt),
            style: FilledButton.styleFrom(
              backgroundColor:const Color(0xff796741),
              textStyle: GoogleFonts.montserrat(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          )],
      ),
    );
  }
}
