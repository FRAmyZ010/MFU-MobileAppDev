import 'package:http/http.dart' as http;
import 'dart:convert'; // for jsonDecode
import 'dart:io';

// FOR JSON DATA

// void main() async {
//   print("Getting data ...");
//   // URL
//   Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
//   http.Response response = await http.get(uri);
//   // response = status code + body
//   // check status code
//   if(response.statusCode == 200){
//     print(response.body);
//     print('Connection successful');

//     // get "title" and "body"
//     // response.body is JSON String
//     // convert JSON to Map

//     Map<String, dynamic> result = jsonDecode(response.body) as Map<String, dynamic>;
//     print(result['title']);
//     print(result['body']);
//   }else{
//     print(response.statusCode);
//     print('Connection failed');
//   }

// }

// void main() async {
//   print("Getting data ...");
//   // URL
//   Uri uri = Uri.parse('http://localhost:3000/register');
//   http.Response response = await http.get(uri);
//   // response = status code + body
//   // check status code
//   if (response.statusCode == 200) {
//     print('Connection successful');

//     // get "title" and "body"
//     // response.body is JSON String
//     // convert JSON array to List
//     final result = jsonDecode(response.body) as List;
//     // loop
//     int total = 0;
//     print("-------------- ALL EXPENSES --------------");
//     for (Map exp in result) {
//       total += exp['paid'] as int;
//       print("${exp['id']}. ${exp['item']} : ${exp['paid']} @ ${exp['date']}");

//     }
//     print('Total expenses: $total ฿');
//   } else {
//     print(response.statusCode);
//     print('Connection failed');
//   }
// }

void main() async {
  print('===== LOGIN =====');
  stdout.write('Username: ');
  String? username = stdin.readLineSync()?.trim();

  stdout.write('Password: ');
  String? password = stdin.readLineSync()?.trim();

  if (username == null || password == null) {
    print('Incomplete input.');
    return;
  }

  final body = {"username": username, "password": password};

  // ================ LOGIN SESSION

  final url = Uri.parse('http://localhost:3000/login');
  final response = await http.post(url, body: body);

  if (response.statusCode == 200) {
    final loginData = jsonDecode(response.body);
    int? userId = loginData['user_id'];

    // ================= LOOP EXPENSES TRACKING APP

    bool run = true;

    while (run) {
      print("========== Expense Tracking App ==========");
      print("1. Show all");
      print("2. Today's expenses");
      print("3. Exit");
      stdout.write("Choose ...");
      final choice = stdin.readLineSync()?.trim();

      switch (choice) {
        case '1':
          final expenseurl = Uri.parse(
            'http://localhost:3000/expenses/$userId',
          );
          final response = await http.get(expenseurl);

          if (response.statusCode == 200) {
            final result = jsonDecode(response.body) as List;
            int total = 0;
            int order = 1;
            print("-------------- ALL EXPENSES --------------");
            for (Map exp in result) {
              total += exp['paid'] as int;
              print(
                "$order. ${exp['item']} : ${exp['paid']}฿ @ ${exp['date']}",
              );
              order++;
            }
            print("Total expenses = $total฿");
          } else {
            print('Error ${response.statusCode}: ${response.body}');
          }

          break;

        case '2':
          final todayurl = Uri.parse(
            'http://localhost:3000/expenses/today/$userId',
          );
          final todayResponse = await http.get(todayurl);

          if (todayResponse.statusCode == 200) {
            final result = jsonDecode(todayResponse.body) as List;
            int total = 0;
            int order = 1;
            print("-------------- TODAY'S EXPENSES --------------");
            for (Map exp in result) {
              total += exp['paid'] as int;
              print(
                "$order. ${exp['item']} : ${exp['paid']}฿ @ ${exp['date']}",
              );
              order++;
            }
            print("Total expenses = $total฿");
          } else {
            print('Error ${todayResponse.statusCode}: ${todayResponse.body}');
          }
          break;

        case '3':
          print("------ BYE ------");
          run = false;
      }
    }
  } else if (response.statusCode == 401 || response.statusCode == 500) {
    final result = response.body;
    print(result);
  } else {
    print('Unknown error!');
  }
}
