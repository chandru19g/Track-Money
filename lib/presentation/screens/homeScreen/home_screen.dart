import 'package:flutter/material.dart';
import 'package:trackmoney/core/styles/styles.dart';
import 'package:trackmoney/presentation/screens/homeScreen/widgets/balance_container_widget.dart';
import 'package:trackmoney/presentation/widgets/expense_card_widget.dart';
import 'package:trackmoney/presentation/widgets/primary_app_bar_widget.dart';
import 'package:trackmoney/presentation/widgets/sizedbox_widgets.dart';
import 'package:trackmoney/presentation/widgets/text_widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> transactions = [
    {
      "id": 1,
      "color": Colors.orange[200],
      "name": "Food",
      "price": "-45",
      "date": "Today"
    },
    {
      "id": 2,
      "color": Colors.purple[200],
      "name": "Home Rent",
      "price": "-45",
      "date": "Today"
    },
    {
      "id": 3,
      "color": Colors.lime[200],
      "name": "Shopping",
      "price": "-45",
      "date": "Today"
    },
    {
      "id": 4,
      "color": Colors.pink[200],
      "name": "Entertainment",
      "price": "-45",
      "date": "Today"
    },
    {
      "id": 5,
      "color": Colors.red[200],
      "name": "Travel",
      "price": "-45",
      "date": "Today"
    },
    {
      "id": 6,
      "color": Colors.yellow[200],
      "name": "Recharge",
      "price": "-45",
      "date": "Today"
    },
    {
      "id": 7,
      "color": Colors.blue[200],
      "name": "Refunds",
      "price": "45",
      "date": "Yesterday"
    },
    {
      "id": 8,
      "color": Colors.green[200],
      "name": "Pet Groom",
      "price": "-45",
      "date": "Yesterday"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgGreyColor,
        appBar: const PrimaryAppbarWidget(
          title: "Welcome!!",
          isGradientTitle: false,
          iconUrl: 'assets/icons/settings.svg',
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // padding: const EdgeInsets.all(16.0),
            children: [
              const BalanceContainer(),
              const LargeHeightSizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(
                    "Transactions",
                    color: Styles.blackColor,
                    size: 18.0,
                    weight: FontWeight.w600,
                  ),
                  InkWell(
                    onTap: () {},
                    child: TextWidget(
                      "View all",
                      color: Styles.iconGreyColor,
                    ),
                  ),
                ],
              ),
              const MediumHeightSizedBox(),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: 16.0),
                  // physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    // log(transactions[index]['color']);
                    return ExpenseCardWidget(
                      color: transactions[index]['color'],
                      // color: Colors.red,
                      date: transactions[index]['date'],
                      price: transactions[index]['price'],
                      title: transactions[index]['name'],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const PrimaryHeightSizeddBox();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
