import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  final Color shapeColor;
  final bool isFlipped;

  MyPainter({required this.shapeColor, required this.isFlipped});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    if (isFlipped) {
      canvas.translate(0, size.height); // Move the painting down
      canvas.scale(1, -1); // Flip vertically
    }

    Paint paint = Paint();
    Path path = Path();

    paint.color = shapeColor;
    path = Path();

    path.lineTo(size.width * 0.27, 0);
    path.cubicTo(size.width * 0.3, 0, size.width / 3, size.height * 0.08,
        size.width / 3, size.height * 0.17);
    path.cubicTo(size.width / 3, size.height / 4, size.width * 0.35,
        size.height * 0.31, size.width * 0.38, size.height * 0.31);
    path.cubicTo(size.width * 0.38, size.height * 0.31, size.width * 0.62,
        size.height * 0.31, size.width * 0.62, size.height * 0.31);
    path.cubicTo(size.width * 0.65, size.height * 0.31, size.width * 0.67,
        size.height / 4, size.width * 0.67, size.height * 0.17);
    path.cubicTo(size.width * 0.67, size.height * 0.08, size.width * 0.7, 0,
        size.width * 0.74, 0);
    path.cubicTo(
        size.width * 0.74, 0, size.width * 0.93, 0, size.width * 0.93, 0);
    path.cubicTo(size.width * 0.97, 0, size.width, size.height * 0.09,
        size.width, size.height / 5);
    path.cubicTo(size.width, size.height / 5, size.width, size.height * 0.8,
        size.width, size.height * 0.8);
    path.cubicTo(size.width, size.height * 0.91, size.width * 0.97, size.height,
        size.width * 0.93, size.height);
    path.cubicTo(size.width * 0.93, size.height, size.width * 0.64, size.height,
        size.width * 0.64, size.height);
    path.cubicTo(size.width * 0.62, size.height, size.width * 0.61,
        size.height * 0.97, size.width * 0.6, size.height * 0.94);
    path.cubicTo(size.width * 0.58, size.height * 0.85, size.width * 0.54,
        size.height * 0.79, size.width / 2, size.height * 0.79);
    path.cubicTo(size.width * 0.46, size.height * 0.79, size.width * 0.42,
        size.height * 0.85, size.width * 0.4, size.height * 0.94);
    path.cubicTo(size.width * 0.39, size.height * 0.97, size.width * 0.38,
        size.height, size.width * 0.36, size.height);
    path.cubicTo(size.width * 0.36, size.height, size.width * 0.08, size.height,
        size.width * 0.08, size.height);
    path.cubicTo(size.width * 0.03, size.height, 0, size.height * 0.91, 0,
        size.height * 0.8);
    path.cubicTo(0, size.height * 0.8, 0, size.height / 5, 0, size.height / 5);
    path.cubicTo(
        0, size.height * 0.09, size.width * 0.03, 0, size.width * 0.08, 0);
    path.cubicTo(
        size.width * 0.08, 0, size.width * 0.27, 0, size.width * 0.27, 0);
    path.cubicTo(
        size.width * 0.27, 0, size.width * 0.27, 0, size.width * 0.27, 0);
    canvas.drawPath(path, paint);

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
