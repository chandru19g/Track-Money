import 'package:flutter/material.dart';
import 'package:trackmoney/helpers/styles.dart';
import 'package:trackmoney/screens/homeScreen/home_screen.dart';
import 'package:trackmoney/screens/transaction_screen.dart';
import 'package:trackmoney/widgets/svg_picture.dart';

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
            onPressed: () {},
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
          margin: const EdgeInsets.all(14.0),
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
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
