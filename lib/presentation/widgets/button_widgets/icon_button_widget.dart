import 'package:flutter/material.dart';
import 'package:trackmoney/core/styles/styles.dart';
import 'package:trackmoney/presentation/widgets/svg_picture.dart';

class IconButtonWidget extends StatelessWidget {
  final String iconUrl;
  final void Function() onTap;
  const IconButtonWidget({
    required this.iconUrl,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 32.0,
        width: 32.0,
        decoration: BoxDecoration(
          color: Styles.whiteColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
        padding: const EdgeInsets.all(6.0),
        child: SvgPictureAsset(src: iconUrl),
      ),
    );
  }
}
