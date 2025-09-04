import 'dart:ffi';

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // state variable

  String msg = "Hello";
  double click = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter app')),
      body: Text(msg),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // good for short code
          click++;
          // debugPrint('test');

          if (click % 2 == 0) {
            setState(() {
              msg = 'Hello';
            });
          } else {
            setState(() {
              msg = 'Hi';
            });
          }
        },
        child: Text('Click'),
      ),
    );
  }
}
