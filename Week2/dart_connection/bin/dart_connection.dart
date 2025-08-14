import 'package:http/http.dart' as http;
import 'dart:convert'; // for jsonDecode

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

void main() async {
  print("Getting data ...");
  // URL
  Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/users');
  http.Response response = await http.get(uri);
  // response = status code + body
  // check status code
  if (response.statusCode == 200) {
    print('Connection successful');

    // get "title" and "body"
    // response.body is JSON String
    // convert JSON array to List
    final result = jsonDecode(response.body) as List;
    print("ID : ${result[0]['id']}");
    print("NAME : ${result[0]['name']}");
    print("EMAIL : ${result[0]['email']}");
    // show user's company name
    print("COMPANY : ${result[0]['company']['name']}");
  } else {
    print(response.statusCode);
    print('Connection failed');
  }
}
