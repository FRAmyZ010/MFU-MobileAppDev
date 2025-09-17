import 'package:flutter/material.dart';

class Asm2 extends StatefulWidget {
  const Asm2({super.key});

  @override
  State<Asm2> createState() => _Asm2State();
}

class _Asm2State extends State<Asm2> {
  TextEditingController tcNum1 = TextEditingController();
  TextEditingController tcNum2 = TextEditingController();

  String ans = "";

  void Sum(String n1, String n2) {
    int? num1 = int.tryParse(n1);
    int? num2 = int.tryParse(n2);

    if (num1 != null && num2 != null) {
      setState(() {
        String value = (num1 + num2).toString();
        ans = "Result = $value";
      });
    } else {
      setState(() {
        ans = "Incorrect input";
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
      backgroundColor: const Color.fromARGB(255, 255, 229, 254),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: tcNum1,
                      decoration: InputDecoration(labelText: "First Number"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("  +  "),
                  ),
                  Expanded(
                    child: TextField(
                      controller: tcNum2,
                      decoration: InputDecoration(labelText: "Second Number"),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Sum(tcNum1.text, tcNum2.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Calculate"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Clear();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Clear"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(ans, style: TextStyle(color: Colors.red))],
            ),
          ],
        ),
      ),
    );
  }
}
