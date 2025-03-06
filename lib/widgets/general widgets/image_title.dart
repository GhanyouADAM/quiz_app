import 'package:flutter/material.dart';

//display an image as the title and logo of the app
class ImageTitle extends StatelessWidget {
  const ImageTitle({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: 250,
      width: 400,
      color: const Color.fromARGB(115, 247, 245, 245),
    );
  }
}