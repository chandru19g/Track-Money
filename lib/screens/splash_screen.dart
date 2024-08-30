import 'package:flutter/material.dart';
import 'package:trackmoney/helpers/screen_navigation.dart';
import 'package:trackmoney/helpers/styles.dart';
import 'package:trackmoney/screens/my_navigation_bar.dart';
import 'package:trackmoney/widgets/gradient_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        changeScreenReplacement(context, const MyNavigationBar());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgGreyColor,
      body: const Center(
        child: GradientText(
          text: "Track Money",
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
