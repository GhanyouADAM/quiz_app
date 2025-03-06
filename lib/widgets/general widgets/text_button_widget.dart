import 'package:flutter/material.dart';



//This is a custom widget that displays a text button
class TextButtonWidget extends StatefulWidget {
  const TextButtonWidget(this.buttonFunction,{super.key, required this.text});
  final String text;
  final void Function() buttonFunction;

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: widget.buttonFunction,
      style: ButtonStyle(
        elevation:  WidgetStateProperty.all(7),
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        padding: WidgetStateProperty.all(
           const EdgeInsets.symmetric(
            horizontal: 60,
            vertical: 20,
          ),
        ),
      ),
      label: Text(
        widget.text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      icon: const Icon(
        Icons.play_arrow,
        color: Colors.white,
      ),
    );
  }
}