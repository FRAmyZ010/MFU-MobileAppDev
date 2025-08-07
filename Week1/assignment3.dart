import 'dart:io';

void main() {
  var account = [
    {'username': 'Lisa', 'password': '1111', 'role': 1},
    {'username': 'Tom', 'password': '2222', 'role': 2},
  ];

  print("---Login---");
  stdout.write("Username : ");
  String? username = stdin.readLineSync();
  stdout.write("Password : ");
  String? pass = stdin.readLineSync();

  bool found = false;

  for (var acc in account) {
    if (acc["username"] == username && acc["password"] == pass) {
      found = true;
      String role = acc['role'] == 1 ? 'admin' : 'user';
      print("Welcome ${acc['username']} ($role)");
    }
  }

  if (!found) {
    print("Wrong login");
  }
}

// role 1 is admin, 2 is user
