import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  // การสร้างฟังกชั่น Return widget

  Widget createIconButton() {
    return OverflowBar(
      alignment: MainAxisAlignment.center,
      children: [
        IconButton(
          //Icon button no background
          icon: Icon(Icons.volume_up, color: Colors.red),
          onPressed: () {
            debugPrint('Volume Button Clicked');
          },
        ),
        Ink(
          // Icon button with background color
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            color: Colors.blue,
          ),
          child: IconButton(
            onPressed: () {
              debugPrint("Android button Clicked!");
            },
            icon: Icon(Icons.android, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget createOutlineButton() {
    return OverflowBar(
      children: [
        OutlinedButton(
          onPressed: () {
            debugPrint("OutlinedButton clicked!");
          },
          child: Text('OutlinedButton'),
        ),
        SizedBox(width: 8),
        OutlinedButton(
          onPressed: () {
            debugPrint("OutlinedButton clicked!");
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.red,
            backgroundColor: Colors.amber,
            shape: RoundedRectangleBorder(),
          ),
          child: Text('OutlinedButton'),
        ),
      ],
    );
  }

  Widget createButtons() {
    return OverflowBar(
      children: [
        TextButton(onPressed: () {}, child: Text("Text Button")),
        ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
        FilledButton(onPressed: () {}, child: Text("Filled Button")),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(backgroundColor: Colors.red),
          child: Text("Filled Button"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            createIconButton(),
            Divider(),
            createOutlineButton(),
            Divider(),
            createButtons(),
          ],
        ),
      ),
    );
  }
}
