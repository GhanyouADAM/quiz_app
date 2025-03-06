
import 'package:flutter/material.dart';

import 'package:quiz_app/widgets/screen_manager_widget.dart';

void main(){
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenManagerWidget(),
      title: "Flutter Quiz App",
    );
  }
}