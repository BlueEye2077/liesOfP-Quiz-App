import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class QuizButton extends StatelessWidget {
  const QuizButton(
    this.buttonText,
    this.buttonFunction,
{
    super.key,
  });

  final String buttonText;
  final void Function(String answer) buttonFunction;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: FilledButton(

        
        onPressed: () {
          buttonFunction(buttonText);
          
        },

        style: FilledButton.styleFrom(
          backgroundColor: const Color(0xff796741),
          textStyle: GoogleFonts.montserrat(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
