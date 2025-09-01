import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchFunc,{super.key});

  final void Function() switchFunc;
  @override
  Widget build(BuildContext context) {
    const Color myBrownColor = Color(0xff796741);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            // color: const Color.fromARGB(120, 255, 255, 255),
            color: const Color.fromARGB(123, 121, 103, 65),
            width: 300,
          ),
          const SizedBox(height: 50),
          const Text(
            "Lie Or Die!",
            style: TextStyle(
              fontFamily: "Brilon",
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: myBrownColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),

          FilledButton.icon(
            onPressed: switchFunc,
            label: const Text(
              "Start Quiz",
              style: TextStyle(color: Color.fromARGB(239, 255, 255, 255)),
            ),
            icon: const Icon(Icons.arrow_right_alt_sharp),
            style: FilledButton.styleFrom(
              backgroundColor: myBrownColor,
              textStyle: GoogleFonts.montserrat(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
