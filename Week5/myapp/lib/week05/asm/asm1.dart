import 'package:flutter/material.dart';

class Asm1 extends StatelessWidget {
  const Asm1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 157, 189),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    "Wedding Organizer",
                    style: TextStyle(
                      fontFamily: "Sevillana",
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Pre-wedding, Photo, Party",
                    style: TextStyle(
                      fontFamily: "Sevillana",
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Our Service"),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("345 Moo 1 Tasud Chiang Rai, Thailand")],
            ),
          ),
        ],
      ),
    );
  }
}
