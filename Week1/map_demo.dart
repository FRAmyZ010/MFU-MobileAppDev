void main(){
  //Map is close to JS object, key:value
  Map<String, dynamic> student = {"name":"Peter","age":22,"gpax":3.65};
  print(student["name"]);

  //List of Map
  List student = [
      {"name":"Peter","age":22,"gpax":3.95},
      {"name":"Mary","age":19,"gpax":4.00}
  ];

  int age = 0;
  int allAge = 0;
  int avg = 0;

  for(int i=o;i<student.length;i++){
    age=student[i]["age"];
    allAge+=age;
  }
  avg = allAge / student.length;
  print("Age Average : $avg")

}
