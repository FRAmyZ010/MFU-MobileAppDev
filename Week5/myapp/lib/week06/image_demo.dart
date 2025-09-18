import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.amber,
          // child: Image.network(
          //   'https://i.pinimg.com/originals/2e/c6/b5/2ec6b5e14fe0cba0cb0aa5d2caeeccc6.jpg', // ใส่รูปจาก Internet
          //   fit: BoxFit.cover,
          // ),
          child: Image.asset(
            'assets/images/sky.jpg', // ใส่รูปด้วย Local Files ## มีการ แก้ไข pubspec.yaml ในส่วนของ assets
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
