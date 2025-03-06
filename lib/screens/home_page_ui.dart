import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/general widgets/background_widget.dart';
import '../widgets/general widgets/image_title.dart';
import '../widgets/general widgets/text_button_widget.dart';

//This is the first screen of the quiz app
class HomePageUi extends StatefulWidget {
  const HomePageUi(this.startQuiz,{super.key});
  final void Function() startQuiz;

  @override
  State<HomePageUi> createState() => _HomePageUiState();
}

class _HomePageUiState extends State<HomePageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background gradiant color
         const BackgroundWidget(colors: [Colors.indigo, Colors.deepPurple],),

         //the rest of the screen on top of the background
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
               const ImageTitle(imagePath:'assets/images/quiz-logo.png'),
                const SizedBox(height: 20),
                const Text(
                  "Flutter Quiz App",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                 Text(
                  "Learn Flutter the fun way !",
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 226, 222, 230),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child:  TextButtonWidget(widget.startQuiz,text: "Start Quiz"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}