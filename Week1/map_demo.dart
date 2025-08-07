void main() {
  //Map is close to JS object, key:value
  Map<String, dynamic> students = {"name": "Peter", "age": 22, "gpax": 3.65};
  print(students["name"]);

  //List of Map
  List student = [
    {"name": "Peter", "age": 22, "gpax": 3.95},
    {"name": "Mary", "age": 19, "gpax": 4.00},
  ];

  double avg = 0;

  for (int i = 0; i < student.length;i++) {
    avg += student[i]["age"];
  }
  avg /= student.length;

  print("Age Average : $avg");
}
