import 'package:flutter/material.dart';
import 'package:trackmoney/helpers/constants.dart';
import 'package:trackmoney/helpers/styles.dart';
import 'package:trackmoney/screens/homeScreen/widgets/transaction_widget.dart';
import 'package:trackmoney/widgets/expense_card_widget.dart';
import 'package:trackmoney/widgets/gradient_text.dart';
import 'package:trackmoney/widgets/sizedbox_widgets.dart';
import 'package:trackmoney/widgets/svg_picture.dart';
import 'package:trackmoney/widgets/text_widget.dart';

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
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          // title: const Text("Track Money"),
          backgroundColor: Styles.bgGreyColor,
          title: const GradientText(
            text: "Welcome!!",
            isGradientApplied: false,
            style: TextStyle(fontWeight: FontWeight.w600),
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
            const PrimaryWidthSizeddBox(),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
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
            const LargeHeightSizedBox(),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
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
          ],
        ),
      ),
    );
  }
}

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
            "$rupeeSymbol 1400.00",
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
