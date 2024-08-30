import 'package:flutter/material.dart';
import 'package:trackmoney/helpers/styles.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final bool? isGradientApplied;

  const GradientText(
      {required this.text, this.style, this.isGradientApplied, super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: Styles.primaryGradient,
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      ).createShader(
        Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: isGradientApplied == false
            ? style ?? TextStyle(color: Styles.blackColor)
            : (style ?? const TextStyle()).copyWith(color: Colors.white),
      ),
    );
  }
}
