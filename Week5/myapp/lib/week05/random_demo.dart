import 'dart:math';

import 'package:flutter/material.dart';

class RandomDemo extends StatefulWidget {
  const RandomDemo({super.key});

  @override
  State<RandomDemo> createState() => _RandomDemoState();
}

class _RandomDemoState extends State<RandomDemo> {
  TextEditingController tcMin = TextEditingController();
  TextEditingController tcMax = TextEditingController();

  String result = '';

  void genRand() {
    int? min = int.tryParse(tcMin.text);
    int? max = int.tryParse(tcMax.text);

    if (min == null || max == null || min > max) {
      // debugPrint('Wrong Input');
      setState(() {
        result = 'Wrong inputs';
      });
      return;
    }
    int ans = min + Random().nextInt(max - min + 1);

    // debugPrint(ans.toString());
    setState(() {
      result = ans.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text('Random Integer Number'),
              TextField(
                controller: tcMin,
                decoration: InputDecoration(hintText: 'min'),
              ),
              TextField(
                controller: tcMax,
                decoration: InputDecoration(hintText: 'max'),
              ),
              Text(''),
              FilledButton(onPressed: genRand, child: Text('Generate')),
              Text(result),
            ],
          ),
        ),
      ),
    );
  }
}
