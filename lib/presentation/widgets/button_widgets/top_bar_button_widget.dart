import 'package:flutter/material.dart';
import 'package:trackmoney/core/styles/styles.dart';
import 'package:trackmoney/presentation/widgets/text_widgets/text_widget.dart';

class TopBarButtonWidget extends StatelessWidget {
  const TopBarButtonWidget({
    super.key,
    required this.onTapped,
    required this.checkValue,
    required this.title,
  });

  final Function() onTapped;
  final bool checkValue;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: checkValue
            ? BoxDecoration(
                gradient: LinearGradient(
                  colors: Styles.primaryGradient,
                ),
                borderRadius: BorderRadius.circular(16.0),
              )
            : BoxDecoration(
                color: Styles.whiteColor,
                borderRadius: BorderRadius.circular(16.0),
              ),
        child: TextWidget(
          title,
          color: checkValue ? Styles.whiteColor : Styles.blackColor,
          size: 16.0,
          weight: FontWeight.w600,
          align: TextAlign.center,
        ),
      ),
    );
  }
}
