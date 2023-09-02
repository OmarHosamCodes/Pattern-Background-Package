import '/pattern_background.dart';

class PlusSignPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gapSize;
  final double crossSize;

  PlusSignPainter({
    this.color = Colors.black,
    this.strokeWidth = 2.0,
    this.gapSize = 10.0,
    this.crossSize = 20.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final width = size.width;
    final height = size.height;

    // Calculate the number of plus signs that fit horizontally and vertically
    final numHorizontal = (width / (crossSize + gapSize)).ceil();
    final numVertical = (height / (crossSize + gapSize)).ceil();

    // Draw plus signs
    for (int row = 0; row < numVertical; row++) {
      for (int col = 0; col < numHorizontal; col++) {
        final startX = col * (crossSize + gapSize) + gapSize / 2;
        final startY = row * (crossSize + gapSize) + gapSize / 2;

        // Draw the vertical line
        canvas.drawLine(
          Offset(startX + crossSize / 2, startY),
          Offset(startX + crossSize / 2, startY + crossSize),
          paint,
        );

        // Draw the horizontal line
        canvas.drawLine(
          Offset(startX, startY + crossSize / 2),
          Offset(startX + crossSize, startY + crossSize / 2),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
