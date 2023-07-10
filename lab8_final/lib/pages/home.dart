import 'package:flutter/material.dart';
import 'package:lab8_final/api/expense_api.dart';
import 'package:lab8_final/entity/expense.entity.dart';
import './signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './expense_detail.dart';

import '../components/expense_item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userEmail = "";

  List<ExpenseEntity> histories = [];

  TextEditingController keteranganController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUserData();
    fetchExpenses();
  }

  void fetchUserData() async {
    final storage = await SharedPreferences.getInstance();
    String _userEmail = storage.getString("email") ?? "-";
    setState(() {
      userEmail = _userEmail;
    });
  }

  void handleSubmitButtonClick() async {
    FocusManager.instance.primaryFocus?.unfocus();
    showDialog(
        context: context,
        builder: (ctx) => Center(child: CircularProgressIndicator()));
    try {
      await ExpenseApi.create(keteranganController.text, amountController.text);
      await fetchExpenses();
      handleResetButtonClick();
      Navigator.pop(context);
    } on Exception catch (err) {
      Navigator.pop(context);
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          content: Text(err.toString()),
        ),
      );
      handleResetButtonClick();
    }
  }

  void handleResetButtonClick() {
    keteranganController.text = "";
    amountController.text = "";
  }

  void handleLogoutButtonClick() async {
    final storage = await SharedPreferences.getInstance();
    storage.remove("email");
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (ctx) => SignupPage()),
      (route) => false,
    );
  }

  fetchExpenses() async {
    try {
      List<ExpenseEntity> expenses = await ExpenseApi.list();
      setState(() {
        histories = expenses;
      });
    } on Exception catch (err) {
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
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Catat\nPengeluaran",
                  style: TextStyle(
                    color: Color(0xFF141414),
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                ),
                InkWell(
                  onTap: () {
                    handleLogoutButtonClick();
                  },
                  child: const Icon(
                    Icons.logout,
                    size: 30,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Login sebagai ${userEmail}",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w500),
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
            Column(
              children: histories
                  .map(
                    (ExpenseEntity history) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => ExpenseDetailPage(
                              expense: history,
                            ),
                          ),
                        ).then((value) {
                          fetchExpenses();
                        });
                      },
                      child: ExpenseItemCard(
                        history: history,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
