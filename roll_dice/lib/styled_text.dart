import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final List<Color> gradientColors;
  final String text;

  const StyledText(
    this.text, {
    Key? key,
    this.gradientColors = const [
      Color.fromARGB(255, 210, 255, 48),
      Color.fromARGB(255, 255, 84, 184),
      Color.fromARGB(255, 8, 226, 255),
    ],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white, // color must be white to see the gradient
        ),
      ),
      shaderCallback: (Rect rect) {
        return LinearGradient(
          colors: gradientColors,
        ).createShader(rect);
      },
    );
  }
}
