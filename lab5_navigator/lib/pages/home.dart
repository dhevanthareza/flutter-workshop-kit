import 'package:flutter/material.dart';
import 'package:lab5_navigator/pages/expense_detail.dart';

import '../components/expense_item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> histories = [
    {"name": "Listrik", "amount": 5000000},
    {"name": "Internet", "amount": 3000000},
    {"name": "Utang", "amount": 5000000},
    {"name": "Cicilan Rumah", "amount": 10000000},
    {"name": "Kuota", "amount": 80000},
    {"name": "Nongki nongki asik", "amount": 800000},
    {"name": "Starbuck", "amount": 700000},
    {"name": "Ganti HP", "amount": 70000000},
    {"name": "Ganti Laptop", "amount": 170000000},
  ];

  TextEditingController keteranganController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  void handleSubmitButtonClick() {
    setState(() {
      histories.insert(0,
          {"name": keteranganController.text, "amount": amountController.text});
    });
    handleResetButtonClick();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void handleResetButtonClick() {
    keteranganController.text = "";
    amountController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 0),
        child: ListView(
          children: [
            const Text(
              "Catat\nPengeluaran",
              style: TextStyle(
                color: Color(0xFF141414),
                fontWeight: FontWeight.w700,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 50,
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
                  handleSubmitButtonClick();
                },
                child: const Text('Submit'),
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
                  handleResetButtonClick();
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Color(0xFF141414)),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Pengeluaran Terakhir",
              style: TextStyle(
                color: Color(0xFF141414),
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...histories
                .map(
                  (Map<String, dynamic> history) => InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => ExpenseDetailPage(
                            amount: history['amount'].toString(),
                            description: history['name'],
                          ),
                        ),
                      );
                    },
                    child: ExpenseItemCard(
                      history: history,
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
