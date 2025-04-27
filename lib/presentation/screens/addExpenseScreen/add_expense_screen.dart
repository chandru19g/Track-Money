import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trackmoney/core/styles/styles.dart';
import 'package:trackmoney/presentation/widgets/button_widgets/bottom_button_widget.dart';
import 'package:trackmoney/presentation/widgets/income_expense_widget.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  bool isIncome = false;
  bool isExpense = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgGreyColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.close, color: Styles.iconGreyColor),
          ),
        ],
      ),
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
              }),
        ],
      ),
      bottomNavigationBar: const BottomButtomWidget(),
    );
  }
}
