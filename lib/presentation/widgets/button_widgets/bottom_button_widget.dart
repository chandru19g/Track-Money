
import 'package:flutter/material.dart';
import 'package:trackmoney/core/styles/styles.dart';

class BottomButtomWidget extends StatelessWidget {
  const BottomButtomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Styles.whiteColor,
        borderRadius: BorderRadius.circular(16.0),
        gradient: LinearGradient(
          colors: Styles.primaryGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Text(
        "Save",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Styles.whiteColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
