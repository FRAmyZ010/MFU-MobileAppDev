void main() {
  String ID = "6031302089";

  // เราสามารถดึงค่าตัวอักษรออกมาได้
  
  // print(ID[0]); OUTPUT : 6

  int sum = 0;

  // ใช้for loop ในการหาค่ารวม

  for (int i = 0; i < ID.length; i++) {
    sum += int.parse(ID[i]);
  }

  print("Sum of $ID = $sum");
}
