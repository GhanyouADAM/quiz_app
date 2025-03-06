import 'package:flutter/material.dart';

//create a background gradiant color with a list of colors
class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, this.colors = const [
    Color(0xFF3594DD),
    Color(0xFF4563DB),
    Color(0xFF5036D5),
    Color(0xFF5B16D0),
  ]});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}