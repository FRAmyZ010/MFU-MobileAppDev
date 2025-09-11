import 'package:flutter/material.dart';

class SingleChildDemo extends StatelessWidget {
  const SingleChildDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('My app')),
      body: SafeArea(
        // Align is (x,y)
        child: Align(alignment: Alignment(0, 0), child: Text('Single Child')),
      ),
    );
  }
}
