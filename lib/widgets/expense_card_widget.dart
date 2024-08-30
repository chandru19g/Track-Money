import 'package:flutter/material.dart';
import 'package:trackmoney/helpers/constants.dart';
import 'package:trackmoney/helpers/styles.dart';
import 'package:trackmoney/widgets/sizedbox_widgets.dart';
import 'package:trackmoney/widgets/text_widget.dart';

class ExpenseCardWidget extends StatelessWidget {
  final Color color;
  final String title;
  final String price;
  final String date;

  const ExpenseCardWidget({
    required this.color,
    required this.date,
    required this.price,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Styles.whiteColor,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: color,
                ),
                height: 50.0,
                width: 50.0,
              ),
              const PrimaryWidthSizeddBox(),
              TextWidget(
                title,
                color: Styles.blackColor,
                size: 16.0,
                weight: FontWeight.w600,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextWidget(
                "$rupeeSymbol $price",
                color: Styles.secBlackColor,
                weight: FontWeight.w600,
              ),
              TextWidget(
                date,
                color: Styles.tertiaryGreyColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
