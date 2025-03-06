import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'question_index_widget.dart';

//each block of question
class SummaryItemWidget extends StatelessWidget{
const SummaryItemWidget({super.key, required this.itemData});
final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['chosen_answer'] == itemData['answer']; //bool value for the question number's color

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      //a row of one question number and a column who contain the question and the answers
      child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //dedicated widget for each question number
              QuestionIndexWidget(index: itemData['question_index'] as int, isCorrectAnswer: isCorrectAnswer ),
              SizedBox(width: 20),
              Expanded(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(itemData['question'] as String, style:GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15
                    )),
                    const SizedBox(height: 5),
                    Text('Your answer : ${itemData['chosen_answer']}', style: GoogleFonts.lato(color: const Color.fromARGB(255, 240, 239, 248)),),
                    Text('Correct answer : ${itemData['answer']}', style: GoogleFonts.lato(color: const Color.fromARGB(255, 128, 241, 137)),)
                  ],
                ),
              )
            ],
          ),
    );
  }
}