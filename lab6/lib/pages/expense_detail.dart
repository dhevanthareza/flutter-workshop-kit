import 'package:flutter/material.dart';

class ExpenseDetailPage extends StatelessWidget {
  final String amount;
  final String description;
  const ExpenseDetailPage({
    super.key,
    required this.amount,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              amount,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xFF141414),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(description)
          ],
        ),
      ),
    );
  }
}
