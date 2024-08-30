import 'package:flutter/material.dart';
import 'package:trackmoney/helpers/styles.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgGreyColor,
        body: const Text("Transaction"),
      ),
    );
  }
}
