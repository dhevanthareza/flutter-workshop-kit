import 'package:flutter/material.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            const TextField(
              cursorColor: Color(0xFF141414),
              decoration: InputDecoration(
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
            const TextField(
              cursorColor: Color(0xFF141414),
              decoration: InputDecoration(
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
                onPressed: () {},
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
                onPressed: () {},
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
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Radius border (10.0)
              ),
              margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Bayar Listrik",
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      "Rp. 750.000",
                      style: TextStyle(
                        color: Color(0xFF141414),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Radius border (10.0)
              ),
              margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Internet",
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      "Rp. 350.000",
                      style: TextStyle(
                        color: Color(0xFF141414),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Radius border (10.0)
              ),
              margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Internet",
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      "Rp. 350.000",
                      style: TextStyle(
                        color: Color(0xFF141414),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Radius border (10.0)
              ),
              margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Internet",
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      "Rp. 350.000",
                      style: TextStyle(
                        color: Color(0xFF141414),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Radius border (10.0)
              ),
              margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Internet",
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      "Rp. 350.000",
                      style: TextStyle(
                        color: Color(0xFF141414),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Radius border (10.0)
              ),
              margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Internet",
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      "Rp. 350.000",
                      style: TextStyle(
                        color: Color(0xFF141414),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Radius border (10.0)
              ),
              margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Internet",
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      "Rp. 350.000",
                      style: TextStyle(
                        color: Color(0xFF141414),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Radius border (10.0)
              ),
              margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Internet",
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      "Rp. 350.000",
                      style: TextStyle(
                        color: Color(0xFF141414),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
