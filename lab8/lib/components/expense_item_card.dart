import 'package:flutter/material.dart';

class ExpenseItemCard extends StatelessWidget {
  Map<String, dynamic> history;

  ExpenseItemCard({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Radius border (10.0)
      ),
      margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          children: [
            Expanded(
              child: Text(
                history['name'],
                style: const TextStyle(
                  color: Color(0xFF141414),
                  fontSize: 15,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            Text(
              history['amount'].toString(),
              style: const TextStyle(
                color: Color(0xFF141414),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
