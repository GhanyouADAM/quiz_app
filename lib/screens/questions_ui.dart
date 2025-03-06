import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/summary%20widgets/answers_button_widget.dart';
import 'package:quiz_app/widgets/general%20widgets/background_widget.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsUi extends StatefulWidget {
  const QuestionsUi({super.key, required this.onSeletedAnswer});
  final void Function(String answer) onSeletedAnswer;

  @override
  State<QuestionsUi> createState() => _QuestionsUiState();
}

class _QuestionsUiState extends State<QuestionsUi> {
  int index = 0;


  void userAnswer(String seletedAnswer){
    widget.onSeletedAnswer(seletedAnswer);
    setState(() {
         index++;//move to the next question when the user selects an answer
    });
  }

  
  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[index]; // the questions shown on screen
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(currentQuestions.question, style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 239, 236, 243),
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                //display one by one the answers afiliated to the current questions but shuffled trough the built in method of the questions class
                ...currentQuestions.getTheShufflelist().map((answer){
                  return AnswersButtonWidget(
                    text: answer,
                    onTap: (){
                      userAnswer(answer);
                    }
                     );
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}