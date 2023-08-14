import 'package:flutter/material.dart';

import 'package:roll_dice/dice_roller.dart';
import 'package:roll_dice/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DiceRoller(),
            SizedBox(height: 20),
            StyledText('あいうえお!'),
          ],
        ),
      ),
    );
  }
}
