import 'package:flutter/material.dart';
import 'package:second_quiz_app/widgets/background_container.dart';
import 'package:second_quiz_app/widgets/start_screen.dart';
import 'package:second_quiz_app/screens/questions_screen.dart';
import "package:second_quiz_app/questions/quetions_data.dart";
import "package:second_quiz_app/widgets/results_screen.dart";

class QuizController extends StatefulWidget {
  const QuizController({super.key});

  @override
  State<QuizController> createState() {
    return _QuizController();
  }
}

class _QuizController extends State<QuizController> {
  String activeScreen = "start-screen";
  int activeQuestionNumer = 0;
  List<Map<String, Object>> resultsDataDict = [];
  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void switchQuestion(answer) {
    setState(() {
      if (activeQuestionNumer == questionsList.length - 1) {
        activeScreen = "results-screen";
        resultsDataDict.add({
          "question-number": activeQuestionNumer +1,
          "question": questionsList[activeQuestionNumer].theQuestion,
          "right-answer": questionsList[activeQuestionNumer].answers[0],
          "user-answer": answer,
        });
      } else {
        resultsDataDict.add({
          "question-number": activeQuestionNumer+1 ,
          "question": questionsList[activeQuestionNumer].theQuestion,
          "right-answer": questionsList[activeQuestionNumer].answers[0],
          "user-answer": answer,
        });
        activeQuestionNumer++;
      }
    });
  }

void restartQuiz (){
  setState(() {
    activeScreen = "questions-screen";
    resultsDataDict.clear();
    activeQuestionNumer=0;
  });
}



  @override
  Widget build(BuildContext context) {
    final Widget activeScreenWidget;

    if (activeScreen == "start-screen") {
      activeScreenWidget = StartScreen(switchScreen);
    } else if (activeScreen == "questions-screen") {
      activeScreenWidget = QuestionsScreen(activeQuestionNumer, switchQuestion);
    } else {
      activeScreenWidget = ResultsScreen(resultsDataDict,restartQuiz);
    }
    return BackgroundContainer(activeScreenWidget);
  }
}
