import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trackmoney/core/constants/route_names.dart';
import 'package:trackmoney/core/styles/styles.dart';
import 'package:trackmoney/presentation/screens/homeScreen/home_screen.dart';
import 'package:trackmoney/presentation/screens/transactionScreen/transaction_screen.dart';
import 'package:trackmoney/presentation/widgets/svg_picture.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  String homeIcon = "assets/icons/dashboard.svg";
  String transactionIcon = "assets/icons/transactions.svg";

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    TransactionScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Styles.bgGreyColor,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: Styles.primaryGradient,
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
            shape: BoxShape.circle,
          ),
          child: FloatingActionButton(
            onPressed: () {
              context.pushNamed(RouteNames.addExpense);
            },
            backgroundColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightElevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            elevation: 0.0,
            child: Icon(
              Icons.add,
              color: Styles.whiteColor,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(bottom: 14.0, left: 14.0, right: 14.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: SvgPictureAsset(
                    src: homeIcon,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: SvgPictureAsset(
                    src: transactionIcon,
                  ),
                  label: "",
                ),
              ],
              backgroundColor: Styles.whiteColor,
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 0.0,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
