import 'package:flutter/material.dart';
import 'package:lab8_final/api/expense_api.dart';
import 'package:lab8_final/entity/expense.entity.dart';

class ExpenseDetailPage extends StatefulWidget {
  final ExpenseEntity expense;
  const ExpenseDetailPage({
    super.key,
    required this.expense,
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
    keteranganController.text = "${widget.expense.description}";
    amountController.text = "${widget.expense.amount}";
  }

  void handleUpateButtonClick() async {
    showDialog(
      context: context,
      builder: (ctx) => Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await ExpenseApi.update(
        widget.expense.id ?? 0,
        keteranganController.text,
        amountController.text,
      );
      Navigator.pop(context);
      Navigator.pop(context);
    } on Exception catch (err) {
      Navigator.pop(context);
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          content: Text(err.toString()),
        ),
      );
    }
  }

  void handleDeleteButtonClick() async {
    showDialog(
      context: context,
      builder: (ctx) => Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await ExpenseApi.delete(
        widget.expense.id ?? 0,
      );
      Navigator.pop(context);
      Navigator.pop(context);
    } on Exception catch (err) {
      Navigator.pop(context);
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          content: Text(err.toString()),
        ),
      );
    }
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
                  handleUpateButtonClick();
                },
                child: const Text('Update'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color(0xFFF2F2F2),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Radius border (10.0)
                  ),
                ),
                onPressed: () {
                  handleDeleteButtonClick();
                },
                child: const Text(
                  'Delete',
                  style: TextStyle(color: Color(0xFF141414)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
