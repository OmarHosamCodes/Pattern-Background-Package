import 'package:flutter/material.dart';

class DotPainter extends CustomPainter {
  final double dotRadius;
  final Color dotColor;
  final double spacing;

  DotPainter({
    this.dotRadius = 0.5,
    this.dotColor = const Color.fromRGBO(224, 224, 224, 1),
    this.spacing = 15.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = dotColor;
    final yCount = (size.height / (spacing * 2)).ceil();
    final xCount = (size.width / (spacing * 2)).ceil();

    for (var i = 0; i < yCount; i++) {
      final y = spacing * (2 * i + 1);
      for (var j = 0; j < xCount; j++) {
        final x = spacing * (2 * j + 1);
        canvas.drawCircle(Offset(x, y), dotRadius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(DotPainter oldDelegate) => false;
}

// class DotBackground extends StatelessWidget {
//   const DotBackground(
//       {super.key,
//       this.dotRadius = 0.5,
//       this.dotColor = const Color.fromRGBO(224, 224, 224, 1),
//       this.spacing = 15.0});
//   final double dotRadius;
//   final Color dotColor;
//   final double spacing;

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: DotPainter(
//         dotRadius: dotRadius,
//         dotColor: dotColor,
//         spacing: spacing,
//       ),
//     );
//   }
// }
