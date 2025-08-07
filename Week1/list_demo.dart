void main() {
  // Dynamic list
  List<dynamic> names = ["Tom", "Lisa", "Rose", 1, true];
  // List of sting
  List<String> users = ["Tom", "Lisa"];
  // List of int
  List<int> scores = [20, 15, 10];

  // print(users[0]); //Tom
  // print(users.length); //2
  // print(users.isEmpty); //false

  // // for
  // for (int i = 0; i < users.length; i++) {
  //   print(users[i]);
  // }
  // // for .. in
  // for (String user in users) {
  //   print(user);
  // }

  // // forEach
  // users.forEach((user) {
  //   print(user);
  // });

  List<int> cart = [80, 55, 42];
  // find total price
  
  int totalPrice = 0;
  for (int i = 0; i < cart.length; i++) {
    totalPrice += cart[i]; //totalPrice = totalPrice + cart[i]
  }
  print("Total price : $totalPrice");
}
