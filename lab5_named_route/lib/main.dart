import 'package:flutter/material.dart';
import 'package:lab5_named_route/pages/expense_detail.dart';
import 'package:lab5_named_route/pages/home.dart';
import 'package:lab5_named_route/pages/login.dart';
import 'package:lab5_named_route/pages/signup.dart';
import './pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/detail': (context) => ExpenseDetailPage()
      },
    );
  }
}
