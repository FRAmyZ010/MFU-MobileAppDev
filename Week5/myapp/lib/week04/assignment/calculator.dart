import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController tcNum1 = TextEditingController();
  TextEditingController tcNum2 = TextEditingController();

  String ans = "";

  // Sum function

  void Sum() {}

  void Power() {}
  void Clear() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: TextField(
              controller: tcNum1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number 1",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: TextField(
              controller: tcNum1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number 2",
              ),
            ),
          ),

          ElevatedButton(
            onPressed: Sum,
            child: Text('Sum'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
            ),
          ),
          SizedBox(height: 16),
          Text(ans),

          ElevatedButton(
            onPressed: Power,
            child: Text('Sum'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 7, 147, 255),
              foregroundColor: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Text(ans),

          ElevatedButton(
            onPressed: Clear,
            child: Text('Sum'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 254, 0, 0),
              foregroundColor: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Text(ans),
        ],
      ),
    );
  }
}
