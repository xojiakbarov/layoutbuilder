





import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Snowman(),
    );
  }
}

class Snowman extends StatelessWidget {
  const Snowman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Snowman'),
      ),
      body: CustomPaint(
        painter: Painter(),
        child: Container(),
      ),
    );
  }
}

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawCircle(Offset(size.width / 2, size.height * 3.5 / 10), 70,
        Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 2, size.height * 5.5 / 10), 100,
        Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 3.5, size.height * 5.5 / 10), 40,
        Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 1.4, size.height * 5.5 / 10), 40,
        Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 2, size.height * 8 / 10), 120,
        Paint()..color = Colors.white);
    paint.strokeWidth = 2;
    // body
    canvas.drawCircle(Offset(size.width * 5 / 10, size.height * 5.3 / 10), 4,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5 / 10, size.height * 7.8 / 10), 4,
        Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5 / 10, size.height * 8.5 / 10), 4,
        Paint()..color = Colors.black);

    canvas.drawCircle(Offset(size.width * 5.2 / 10, size.height * 3.3 / 10), 5,
        Paint()..color = Colors.blueAccent);
    canvas.drawCircle(Offset(size.width * 4.8 / 10, size.height * 3.3 / 10), 5,
        Paint()..color = Colors.blueAccent);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}














// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Flutter Demo',
//       home: MainScreen(),
//     );
//   }
// }
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController animationController;
//   late Tween<double> animation;
//
//   @override
//   void initState() {
//     animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 1),
//     )..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           animationController.reverse();
//         } else if (status == AnimationStatus.dismissed) {
//           animationController.forward();
//         }
//       });
//     animation = Tween<double>(
//       begin: 0.8,
//       end: 0,
//     );
//
//     animationController.forward();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: AnimatedBuilder(
//         builder: (context, child) => CustomPaint(
//           painter: PackManPainter(
//             mouthExtend: animationController.value,
//           ),
//         ),
//         animation: animation.animate(animationController),
//       ),
//     ));
//   }
// }
//
// class PackManPainter extends CustomPainter {
//   final double mouthExtend;
//
//   const PackManPainter({
//     super.repaint,
//     required this.mouthExtend,
//   });
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final centerX = size.width / 2;
//     final centerY = size.height / 2;
//     final paint = Paint();
//     paint.color = Colors.yellowAccent;
//
//     canvas.drawArc(
//       Rect.fromCenter(
//         center: Offset(centerX, centerY),
//         width: 200,
//         height: 200,
//       ),
//       0.4,
//       2 * pi - mouthExtend,
//       true,
//       paint,
//     );
//
//     canvas.drawCircle(
//       Offset(-20, -50),
//       10,
//       Paint()..color = Colors.black,
//     );
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
// }
//
// // =======================================================================================================
//
// class LayoutScreen extends StatelessWidget {
//   const LayoutScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return GridView(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: getMaxColumnSize(constraints.maxWidth),
//             ),
//             children: [
//               const WCard(),
//               WCard(),
//               WCard(),
//               WCard(),
//               WCard(),
//               WCard(),
//               WCard(),
//               WCard(),
//               WCard(),
//               WCard(),
//             ],
//           );
//         },
//       ),
//     );
//   }
//
//   int getMaxColumnSize(double value) {
//     if (value < 1020) {
//       return 1;
//     } else if (value > 1020 && value < 1280) {
//       return 2;
//     } else {
//       return 3;
//     }
//   }
// }
//
// class WCard extends StatelessWidget {
//   const WCard({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       margin: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//           border: Border.all(
//             width: 1,
//             color: Colors.grey,
//           ),
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.2),
//               blurRadius: 4,
//             )
//           ]),
//       child: const Column(
//         children: [
//           Text(
//             'Title',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           SizedBox(height: 16),
//           Text(
//             'Lorem ipsum dolor sit amet! Lorem ipsum dolor sit amet! Lorem ipsum dolor sit amet! Lorem ipsum dolor sit amet! Lorem ipsum dolor sit amet!',
//             overflow: TextOverflow.ellipsis,
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
