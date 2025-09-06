import 'package:flutter/material.dart';

class LoginSystem extends StatefulWidget {
  const LoginSystem({super.key});

  @override
  State<LoginSystem> createState() => _LoginSystemState();
}

class _LoginSystemState extends State<LoginSystem> {
  String msg = '';

  String user = 'admin';
  String pass = '1234';

  TextEditingController tcUser = TextEditingController();
  TextEditingController tcPass = TextEditingController();
  TextEditingController tcName = TextEditingController();

  void updateMessage() {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Demo')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextField(
              controller: tcName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
                suffixIcon: IconButton(
                  onPressed: tcName.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextField(
              controller: tcName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
                suffixIcon: IconButton(
                  onPressed: tcName.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),

          ElevatedButton(onPressed: updateMessage, child: Text('OK')),
          SizedBox(height: 16),
          Text(msg),
        ],
        
      ),
    );
  }
}
