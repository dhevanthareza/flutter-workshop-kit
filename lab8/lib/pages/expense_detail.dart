import 'package:flutter/material.dart';
import 'package:lab8/api/expense_api.dart';
import 'package:lab8/utils/rest_client.dart';

class ExpenseDetailPage extends StatefulWidget {
  final int expenseId;
  final String amount;
  final String description;

  const ExpenseDetailPage({
    super.key,
    required this.expenseId,
    required this.amount,
    required this.description,
  });

  @override
  State<ExpenseDetailPage> createState() => _ExpenseDetailPageState();
}

class _ExpenseDetailPageState extends State<ExpenseDetailPage> {
  TextEditingController keteranganController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeTextController();
  }

  void initializeTextController() {
    keteranganController.text = widget.description;
    amountController.text = widget.amount;
  }

  void update() async {
    await ExpenseApi.update(
        widget.expenseId, keteranganController.text, amountController.text);
    Navigator.pop(context);
  }

  void delete() async {
    await ExpenseApi.delete(widget.expenseId);
    Navigator.pop(context);
  }

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
              height: 80,
            ),
            const Text(
              "Edit Expense",
              style: TextStyle(
                color: Color(0xFF1F1F1F),
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              controller: keteranganController,
              cursorColor: const Color(0xFF141414),
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xFF141414),
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xFF141414),
                    width: 2.0,
                  ),
                ),
                labelText: 'Keterangan',
                labelStyle: TextStyle(
                  color: Color(0xFF141414),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: amountController,
              cursorColor: const Color(0xFF141414),
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xFF141414),
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xFF141414),
                    width: 2.0,
                  ),
                ),
                labelText: 'Jumlah Pengeluaran',
                labelStyle: TextStyle(
                  color: Color(0xFF141414),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF141414),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Radius border (10.0)
                  ),
                ),
                onPressed: () {
                  update();
                },
                child: const Text('Update'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF141414),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Radius border (10.0)
                  ),
                ),
                onPressed: () {
                  delete();
                },
                child: const Text('Delete'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
