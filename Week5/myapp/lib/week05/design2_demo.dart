import 'package:flutter/material.dart';

class Design2Demo extends StatelessWidget {
  const Design2Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[700],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // https://icons.iconarchive.com/icons/fasticon/batman-begins/128/batman-icon.png
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                  'https://icons.iconarchive.com/icons/fasticon/batman-begins/128/batman-icon.png',
                ),
              ),
            ),
            Divider(color: Colors.grey),
            Text('Name', style: TextStyle(color: Colors.grey[200])),
            Text(
              'John Doe',
              style: TextStyle(color: Colors.yellow, fontSize: 22),
            ),
            Text('Age', style: TextStyle(color: Colors.grey[200])),
            Text('22', style: TextStyle(color: Colors.yellow, fontSize: 22)),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 8),
                Text(
                  'john_doe@test.com',
                  style: TextStyle(color: Colors.grey[200]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
