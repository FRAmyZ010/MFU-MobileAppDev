import 'dart:io';

void main() {
  stdout.write("Enter your name ... ");
  String? name = stdin.readLineSync();

  if (name == '') {
    print("Sorry, please input your name.");
  } else {
    stdout.write("Enter your age ... ");
    int? age = int.tryParse(stdin.readLineSync() ?? '');
    if (age == null) {
      print("Sorry, please input your age correctly.");
    } else {
      print("$name is $age years old!");
    }
  }
}
