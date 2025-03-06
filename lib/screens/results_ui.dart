

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widgets/general%20widgets/background_widget.dart';
import 'package:quiz_app/widgets/summary%20widgets/answers_summary_widget.dart';

class ResultsUi extends StatefulWidget {
  const ResultsUi({super.key, required this.chosenAnswers, required this.onRestart});
  final List<String> chosenAnswers;
  final void Function() onRestart;
  
  @override
  State<ResultsUi> createState() => _ResultsUiState();
}

class _ResultsUiState extends State<ResultsUi>{
  final List<Map<String, Object>> summary = [];

//assign values to the map objects whith designated keys then return the new list with these updates
  List<Map<String, Object>> getSummaryData(){
    for(int i =0; i<widget.chosenAnswers.length; i++){
      summary.add({
        'question_index': i,
        'question' : questions[i].question,
        'answer' : questions[i].answers[0],
        'chosen_answer' : widget.chosenAnswers[i]
      });
    }
      return summary;

  }
  @override
  Widget build(context){
    final numTotalQuestions = questions.length;// total number of questions
    final summaryData = getSummaryData(); // get the list of map's objets with the news values added
    final numCorrectAnswers = summaryData.where((data) => data['answer'] == data['chosen_answer']).length;// return true for each correctly answered question then count them

    return Scaffold(
      body: Stack(
        children: [
          //backgound setup
          BackgroundWidget(
            colors: [
              Colors.indigo,
              Colors.deepPurple
            ],
          ),
          //main content of the result screen
          SizedBox(
            width: double.infinity,
            child: Container(
              margin: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  //the summary of answered questions
                  Text('You answered $numCorrectAnswers out of $numTotalQuestions questions',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 30,),

                  //the actual content of the summary answers
                  AnswersSummaryWidget(summaryData: summaryData),
                  const SizedBox(height: 30,),

                  //button to restart the quiz
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      iconColor: Colors.white
                    ),
                    onPressed: widget.onRestart,
                     label: Text('restart quiz', style: GoogleFonts.lato(fontSize: 15),),
                      icon: Icon(Icons.restart_alt),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}