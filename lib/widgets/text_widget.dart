import 'package:flutter/material.dart';
import 'package:trackmoney/helpers/styles.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextAlign? align;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? spacing;

  const TextWidget(
    this.text, {
    this.align,
    this.color,
    this.overflow,
    this.size,
    this.weight,
    this.maxLines,
    this.spacing,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        color: Styles.whiteColor,
        fontWeight: weight ?? FontWeight.w400,
        fontSize: size ?? 14.0,
      ),
    );
  }
}
