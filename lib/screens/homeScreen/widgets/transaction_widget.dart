import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trackmoney/widgets/text_widget.dart';

class TransactionWidget extends StatelessWidget {
  final String title;
  final String amount;

  const TransactionWidget(
      {required this.amount, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          title,
        ),
        const SizedBox(
          height: 4.0,
        ),
        TextWidget(
          amount,
          weight: FontWeight.w800,
          size: 18.0,
        )
      ],
    );
  }
}
