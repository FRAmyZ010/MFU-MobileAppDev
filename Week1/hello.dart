import 'dart:io';

void main() {
  // String name = "Pongsapat";
  // print("Hello $name");
  // OUTPUT : Hello Pongsapat

  // stdout >> import dart:io
  // stdout.write('Hello-');
  // stdout.write('Dart');
  // OUTPUT : Hello-Dart

  // GET USER INPUT

  stdout.write('Enter your name : ');

  // read user input as String?
  // ? = nullable, ! = non-null
  // String? = nullable string
  // String name = stdin.readLineSync()!;
  String? name = stdin.readLineSync();
  if (name != null) {
    print('Hello $name');
  } else {
    print('Name can not be empty!');
  }

  stdout.write('Enter your age : ');

  String? age = stdin.readLineSync();
  // Convert str to int
  if (age != null) {
    int? ageInt = int.tryParse(age);
    if (ageInt != null) {
      print('You are $ageInt years old.');
    } else {
      print('Please input only number!');
    }
  }
}
