void main() {
  // Dynamic list
  List<dynamic> names = ["Tom", "Lisa", "Rose", 1, true];
  // List of sting
  List<String> users = ["Tom", "Lisa"];
  // List of int
  List<int> scores = [20, 15, 10];

  print(users[0]); //Tom
  print(users.length); //2
  print(users.isEmpty); //false

  for (int i = 0; i < users.length; i++) {
    print(users[i]);
  }
}
