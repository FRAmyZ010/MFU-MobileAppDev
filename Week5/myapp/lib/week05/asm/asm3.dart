import 'package:flutter/material.dart';
import 'dart:math';

class Asm3 extends StatefulWidget {
  const Asm3({super.key});

  @override
  State<Asm3> createState() => _Asm3State();
}

class _Asm3State extends State<Asm3> {
  TextEditingController guess = TextEditingController();

  String result = "";
  String buttonText = "Guess";
  bool gameOver = false;

  int ans = Random().nextInt(10);

  int chance = 3;

  void checkGuess(String num) {
    int? n = int.tryParse(num);

    if (gameOver) {
      setState(() {
        result = "";
        buttonText = "Guess";
        gameOver = false;
        chance = 3;
        ans = Random().nextInt(10);
        guess.clear();
      });
      return;
    } else {
      if (n != null && n >= 0 && n <= 9) {
        if (n == ans) {
          setState(() {
            result = "Correct, You win!";
            buttonText = "Replay";
            gameOver = true;
          });
        } else {
          chance--;
          if (chance > 0) {
            if (n < ans) {
              setState(() {
                result = "$n is too small, $chance chance(s) left.";
              });
            } else {
              setState(() {
                result = "$n is too large, $chance chance(s) left.";
              });
            }
          } else {
            setState(() {
              result = "Sorry, you lose. The answer is $ans";
              buttonText = "Replay";
              gameOver = true;
            });
          }
        }
      } else {
        setState(() {
          result = "Incorrect input";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Guess a number game", style: TextStyle(fontSize: 25)),
            SizedBox(
              width: 300,
              child: TextField(
                controller: guess,
                decoration: InputDecoration(labelText: "Guess a number 0-9"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                result,
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                checkGuess(guess.text);
              },
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}
