import 'package:flutter/material.dart';
import 'package:trackmoney/core/constants/constants.dart';
import 'package:trackmoney/core/styles/styles.dart';
import 'package:trackmoney/presentation/screens/homeScreen/widgets/transaction_widget.dart';
import 'package:trackmoney/presentation/widgets/sizedbox_widgets.dart';
import 'package:trackmoney/presentation/widgets/text_widgets/text_widget.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          PrimaryHeightSizeddBox(),
          TextWidget(
            "${AppConstants.rupeeSymbol} 1400.00",
            align: TextAlign.center,
            size: 24.0,
            weight: FontWeight.bold,
          ),
          PrimaryHeightSizeddBox(),
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
    );
  }
}
