import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPictureAsset extends StatelessWidget {
  final String src;
  final double? width;
  final double? height;
  final Color? color;

  const SvgPictureAsset(
      {required this.src, this.height, this.width, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      src,
      width: width,
      height: height,
    );
  }
}
