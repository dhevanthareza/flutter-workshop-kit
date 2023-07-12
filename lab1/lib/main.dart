import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.red,
              child: Text("Container 1"),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue,
              child: Text("Container 2"),
            ),
            Text("CONTOH TEXT"),
            ElevatedButton(
              onPressed: () {
                print("LOGGGGGG");
              },
              child: Text("CONTOH BUTTON"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.red,
                  child: Text("Container 3"),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blue,
                  child: Text("Container 4"),
                ),
              ],
            ),
            Expanded(
              child: Container(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
