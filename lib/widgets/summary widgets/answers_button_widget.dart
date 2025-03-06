import 'package:flutter/material.dart';


class AnswersButtonWidget extends StatelessWidget {
  const AnswersButtonWidget({super.key,required this.text, required this.onTap });
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7),
      child: ElevatedButton(
        onPressed: onTap,
         style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 7, 35, 196),
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          
         ),
          child: Text(text, textAlign: TextAlign.center,),
          ),
    );
  }
}