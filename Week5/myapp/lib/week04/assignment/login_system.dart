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

  // Authorization system

  bool checkLogin(String username, String password) {
    return username == user && password == pass;
  }

  void updateMessage() {
    if (checkLogin(tcUser.text, tcPass.text)) {
      setState(() {
        msg = 'Welcome $user';
      });
    } else {
      setState(() {
        msg = 'Wrong username or password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Demo')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: 10,
              top: 20,
            ),
            child: TextField(
              controller: tcUser,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                suffixIcon: IconButton(
                  onPressed: tcUser.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
            child: TextField(
              controller: tcPass,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed: tcPass.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),

          ElevatedButton(onPressed: updateMessage, child: Text('Login')),
          SizedBox(height: 16),
          Text(msg),
        ],
      ),
    );
  }
}
