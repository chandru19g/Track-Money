import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trackmoney/core/constants/route_names.dart';
import 'package:trackmoney/core/styles/styles.dart';
import 'package:trackmoney/presentation/widgets/gradient_text.dart';

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
        if (mounted) {
          context.goNamed(RouteNames.home);
        }
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
