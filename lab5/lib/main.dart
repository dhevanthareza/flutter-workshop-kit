import 'package:flutter/material.dart';
import './pages/splash.dart';
import './pages/home.dart';
import './pages/signup.dart';
import './pages/login.dart';
import './pages/expense_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Expense Tracker',
      home: ExpenseDetailPage(
        description:
            "Lorem Ipsum Dolor sit amet consectetur, Lorem Ipsum Dolor sit amet consectetur, Lorem Ipsum Dolor sit amet consectetur",
        amount: "50000",
      ),
    );
  }
}
