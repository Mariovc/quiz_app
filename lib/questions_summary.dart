import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  static const correctAnswerColor = Color.fromARGB(255, 194, 246, 250);
  static const wrongAnswerColor = Color.fromARGB(255, 255, 185, 163);
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      color: data['user_answer'] == data['correct_answer']
                          ? correctAnswerColor
                          : wrongAnswerColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.cabin(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.aclonica(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: GoogleFonts.cabin(
                          color: const Color.fromARGB(172, 255, 255, 255),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: GoogleFonts.cabin(
                          color: correctAnswerColor,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
