import 'package:flutter/material.dart';

class QuestionIndexWidget extends StatelessWidget{
  const QuestionIndexWidget({super.key, required this.index, required this.isCorrectAnswer});
  final int index;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = index+1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer ? const Color.fromARGB(255, 144, 231, 243) : const Color.fromARGB(255, 238, 123, 161),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(questionNumber.toString(), 
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}