import 'dart:async';

import 'package:flutter/material.dart';

class TimeDemo extends StatefulWidget {
  const TimeDemo({super.key});

  @override
  State<TimeDemo> createState() => _TimeDemoState();
}

class _TimeDemoState extends State<TimeDemo> {
  // String message = 'Start';
  int count = 5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // create a countdown timer
    // Timer(Duration(seconds: 3), () {
    //   setState(() {
    //     message = 'Stop';
    //   });
    // });

    // Future.delayed(Duration(seconds: 3), () {
    //   setState(() {
    //     message = 'Stop';
    //   });
    // });

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        count--;
        if (count == 0) {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(count.toString(), style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}



// แสดงข้อความ Waiting... เมื่อผ่านไป 3 วิ จึงจะขื้น Done

// import 'dart:async';
// import 'package:flutter/material.dart';

// class Ex1 extends StatefulWidget {
//   const Ex1({super.key});

//   @override
//   State<Ex1> createState() => _Ex1State();
// }

// class _Ex1State extends State<Ex1> {
//   String status = "Waiting...";

//   @override
//   void initState() {
//     super.initState();
//     Timer(const Duration(seconds: 3), () {
//       setState(() {
//         status = "Done!";
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(status, style: Theme.of(context).textTheme.headlineLarge),
//       ),
//     );
//   }
// }



// นับถอยหลังจาก 10 - 0

// import 'dart:async';
// import 'package:flutter/material.dart';

// class Ex2 extends StatefulWidget {
//   const Ex2({super.key});

//   @override
//   State<Ex2> createState() => _Ex2State();
// }

// class _Ex2State extends State<Ex2> {
//   int count = 10;

//   @override
//   void initState() {
//     super.initState();
//     Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         count--;
//       });
//       if (count == 0) {
//         timer.cancel();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(count.toString(),
//             style: Theme.of(context).textTheme.headlineLarge),
//       ),
//     );
//   }
// }



// สร้าง Stopwatch ที่เริ่มจาก 0.00 วินาที แล้วเพิ่มขึ้นเรื่อย ๆ ทีละ 0.01 วินาทีเมื่อกดปุ่ม Start และหยุดเมื่อกด Stop

// import 'dart:async';
// import 'package:flutter/material.dart';

// class Ex3 extends StatefulWidget {
//   const Ex3({super.key});

//   @override
//   State<Ex3> createState() => _Ex3State();
// }

// class _Ex3State extends State<Ex3> {
//   double time = 0.00;
//   Timer? timer;

//   void start() {
//     timer?.cancel(); // กันไว้ถ้ามีการกด Start ซ้ำ
//     timer = Timer.periodic(const Duration(milliseconds: 10), (t) {
//       setState(() {
//         time += 0.01;
//       });
//     });
//   }

//   void stop() {
//     timer?.cancel();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(time.toStringAsFixed(2),
//                 style: Theme.of(context).textTheme.headlineLarge),
//             const SizedBox(height: 20),
//             ElevatedButton(onPressed: start, child: const Text("Start")),
//             ElevatedButton(onPressed: stop, child: const Text("Stop")),
//           ],
//         ),
//       ),
//     );
//   }
// }


// สร้าง Countdown Timer จาก 1.00 → 0.00 โดยมีปุ่ม Start และ Reset

// import 'dart:async';
// import 'package:flutter/material.dart';

// class Ex4 extends StatefulWidget {
//   const Ex4({super.key});

//   @override
//   State<Ex4> createState() => _Ex4State();
// }

// class _Ex4State extends State<Ex4> {
//   double timeLeft = 1.00;
//   Timer? timer;

//   void start() {
//     timer?.cancel();
//     timer = Timer.periodic(const Duration(milliseconds: 10), (t) {
//       setState(() {
//         timeLeft -= 0.01;
//         if (timeLeft <= 0) {
//           timeLeft = 0;
//           timer?.cancel();
//         }
//       });
//     });
//   }

//   void reset() {
//     timer?.cancel();
//     setState(() {
//       timeLeft = 1.00;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(timeLeft.toStringAsFixed(2),
//                 style: Theme.of(context).textTheme.headlineLarge),
//             const SizedBox(height: 20),
//             ElevatedButton(onPressed: start, child: const Text("Start")),
//             ElevatedButton(onPressed: reset, child: const Text("Reset")),
//           ],
//         ),
//       ),
//     );
//   }
// }