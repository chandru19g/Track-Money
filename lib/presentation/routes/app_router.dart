import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trackmoney/presentation/screens/addExpenseScreen/add_expense_screen.dart';
import 'package:trackmoney/presentation/screens/my_navigation_bar.dart';
import 'package:trackmoney/presentation/screens/splash_screen.dart';
import 'package:trackmoney/presentation/screens/transactionScreen/transaction_screen.dart';
import '../../core/constants/route_names.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      name: RouteNames.splash,
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: RouteNames.home,
      path: '/',
      builder: (context, state) => const MyNavigationBar(),
    ),
    GoRoute(
      name: RouteNames.transactions,
      path: '/transactions',
      builder: (context, state) => const TransactionScreen(),
    ),
    GoRoute(
      name: RouteNames.addExpense,
      path: '/add-expense',
      builder: (context, state) => const AddExpenseScreen(),
    ),
  ],
  errorBuilder: (context, state) =>
      Scaffold(body: Center(child: Text('Page not found: ${state.error}'))),
);
