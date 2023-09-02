import 'dart:ui';

import '../../pattern_background.dart';

class IconPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const iconSize = 24.0;
    const spacing = 30.0;
    final iconsPerRow = (size.width / spacing).ceil();
    final totalIcons = (size.width / spacing * size.height / spacing).ceil();

    const icon = Icons.star; // Replace with the desired icon

    for (int i = 0; i < totalIcons; i++) {
      final x = (i % iconsPerRow) * spacing;
      final y = (i ~/ iconsPerRow) * spacing;
      final offset = Offset(x, y);
      final iconPainter = IconPainter(icon, color: Colors.blue, size: iconSize);
      iconPainter.paint(canvas, offset);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class IconPainter {
  final IconData iconData;
  final Color color;
  final double size;

  IconPainter(this.iconData, {required this.color, required this.size});

  void paint(Canvas canvas, Offset offset) {
    final builder = ParagraphBuilder(
      ParagraphStyle(
        fontSize: size,
        textAlign: TextAlign.center,
      ),
    )..addText(String.fromCharCode(iconData.codePoint));

    final paragraph = builder.build();
    paragraph.layout(ParagraphConstraints(width: size));

    final offsetTopLeft =
        offset - Offset(0, size / 2); // Adjust vertical position
    canvas.drawParagraph(
      paragraph,
      offsetTopLeft,
    );
  }
}
