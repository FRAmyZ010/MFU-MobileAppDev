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

  void Sum(String n1, String n2) {
    int? num1 = int.tryParse(n1);
    int? num2 = int.tryParse(n2);

    if (num1 != null && num2 != null) {
      setState(() {
        String value = (num1 + num2).toString();
        ans = "Result = $value";
      });
    }
  }

  void Power(String n1, String n2) {
    int? num1 = int.tryParse(n1);
    int? num2 = int.tryParse(n2);

    if (num1 != null && num2 != null) {
      setState(() {
        String value = (num1 * num2).toString();
        ans = "Result = $value";
      });
    }
  }

  void Clear() {
    setState(() {
      ans = "";
      tcNum1.clear();
      tcNum2.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 20,
              left: 20,
              right: 20,
            ),
            child: TextField(
              controller: tcNum1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number 1",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
            child: TextField(
              controller: tcNum2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number 2",
              ),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              Sum(tcNum1.text, tcNum2.text);
            },
            child: Text('Sum'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
            ),
          ),
          SizedBox(height: 16),

          ElevatedButton(
            onPressed: () {
              Power(tcNum1.text, tcNum2.text);
            },
            child: Text('Power'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 7, 147, 255),
              foregroundColor: Colors.white,
            ),
          ),
          SizedBox(height: 16),

          ElevatedButton(
            onPressed: () {
              Clear();
            },
            child: Text('Clear'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 254, 0, 0),
              foregroundColor: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Text(
            ans,
            style: TextStyle(
              color: Colors.red, // 🔴 เปลี่ยนสีข้อความ
              fontSize: 20, // ปรับขนาดได้ด้วย
              fontWeight: FontWeight.bold, // ตัวหนา
            ),
          ),
        ],
      ),
    );
  }
}
