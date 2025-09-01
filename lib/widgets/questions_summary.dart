import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.answersList, {super.key});

  final List answersList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 500,

        child: SingleChildScrollView(
          child: Column(
            children: [
              ...answersList.map(
                (item) => Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          item["right-answer"] == item["user-answer"]
                          ? const Color.fromARGB(131, 76, 175, 79)
                          : const Color.fromARGB(130, 244, 67, 54),
                      child: Text(item["question-number"].toString()),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["question"],
                            style: const TextStyle(
                              fontFamily: "Loretta",
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            item["user-answer"],
                            style: GoogleFonts.montserrat(
                              color: const Color.fromARGB(126, 121, 103, 65),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            item["right-answer"],
                            style: GoogleFonts.montserrat(
                              color: const Color.fromARGB(116, 46, 117, 46),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
