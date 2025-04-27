import 'package:flutter/material.dart';
import 'package:trackmoney/core/styles/styles.dart';
import 'package:trackmoney/presentation/widgets/income_expense_widget.dart';
import 'package:trackmoney/presentation/widgets/primary_app_bar_widget.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  bool isIncome = false;
  bool isExpense = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PrimaryAppbarWidget(
          title: "Transactions",
          isGradientTitle: false,
          iconUrl: "assets/icons/filter.svg",
        ),
        backgroundColor: Styles.bgGreyColor,
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            IncomeExpenseWidget(
              isIncome: isIncome,
              isExpense: isExpense,
              onIncomeTapped: () {
                setState(() {
                  isIncome = true;
                  isExpense = false;
                });
              },
              onExpenseTapped: () {
                setState(() {
                  isIncome = false;
                  isExpense = true;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
