import 'package:flutter/material.dart';

class ExpenseDetailPage extends StatelessWidget {
  const ExpenseDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
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
              "${args['amount']}",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xFF141414),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text("${args['description']}")
          ],
        ),
      ),
    );
  }
}
