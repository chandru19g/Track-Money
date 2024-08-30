import 'package:flutter/material.dart';
import 'package:trackmoney/helpers/constants.dart';
import 'package:trackmoney/helpers/styles.dart';
import 'package:trackmoney/screens/homeScreen/widgets/transaction_widget.dart';
import 'package:trackmoney/widgets/gradient_text.dart';
import 'package:trackmoney/widgets/svg_picture.dart';
import 'package:trackmoney/widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgGreyColor,
        appBar: AppBar(
          // title: const Text("Track Money"),
          backgroundColor: Styles.bgGreyColor,
          title: const GradientText(
            text: "Welcome!!👋",
            isGradientApplied: false,
            // style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 32.0,
                width: 32.0,
                decoration: BoxDecoration(
                  color: Styles.whiteColor,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                padding: const EdgeInsets.all(6.0),
                child: const SvgPictureAsset(src: 'assets/icons/settings.svg'),
              ),
            ),
            const SizedBox(
              width: 16.0,
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: Styles.primaryGradient,
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(
                    "Total Balance",
                    align: TextAlign.center,
                    size: 16.0,
                    weight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  TextWidget(
                    "$rupeeSymbol 1400.00",
                    align: TextAlign.center,
                    size: 24.0,
                    weight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TransactionWidget(
                        title: "Income",
                        amount: "2500.00",
                      ),
                      TransactionWidget(
                        title: "Expenses",
                        amount: "500.00",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
