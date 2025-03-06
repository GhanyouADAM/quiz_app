import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/home_page_ui.dart';
import 'package:quiz_app/screens/questions_ui.dart';
import 'package:quiz_app/screens/results_ui.dart';

class ScreenManagerWidget extends StatefulWidget {
  const ScreenManagerWidget({super.key});

  @override
  State<ScreenManagerWidget> createState() => _ScreenManagerWidgetState();
}

class _ScreenManagerWidgetState extends State<ScreenManagerWidget> {
   Widget? activeScreen;
   List<String> selectedAnswers = []; //store the selected answers

//ensure that the activeScreen is set to the HomePageUi widget
  @override
  void initState(){
    activeScreen = HomePageUi(switchScreen);
    super.initState();
  }
void onRestart(){
  setState(() {
    selectedAnswers = [];
  activeScreen = HomePageUi(switchScreen);
  });
}
  //add the selected answers from the questions screen in the selectedAnswers list
  void chosedAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = ResultsUi(chosenAnswers: selectedAnswers, onRestart: onRestart);
      });
      
    }
  } 
  

  //switch the activeScreen to the Questions screen when the user clicks the start button
  void switchScreen(){
    setState(() {
      activeScreen = QuestionsUi(onSeletedAnswer: chosedAnswer,);
    });
  }
  @override
  Widget build(BuildContext context) {
    return activeScreen!;
  }
}