import 'package:flutter/material.dart';
import 'package:trackmoney/core/styles/styles.dart';
import 'package:trackmoney/presentation/widgets/button_widgets/top_bar_button_widget.dart';

class IncomeExpenseWidget extends StatelessWidget {
  const IncomeExpenseWidget({
    super.key,
    required this.isIncome,
    required this.isExpense,
    required this.onIncomeTapped,
    required this.onExpenseTapped,
  });

  final bool isIncome;
  final bool isExpense;
  final Function() onIncomeTapped;
  final Function() onExpenseTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Styles.whiteColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: TopBarButtonWidget(
              onTapped: onIncomeTapped,
              checkValue: isIncome,
              title: "Income",
            ),
          ),
          Expanded(
            child: TopBarButtonWidget(
              onTapped: onExpenseTapped,
              checkValue: isExpense,
              title: "Expenses",
            ),
          ),
        ],
      ),
    );
  }
}
