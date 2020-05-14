import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFF091D32);
    paint.style = PaintingStyle.fill;

    var roundnessFactor = 60.0;

    var path = Path();

    path.moveTo(0, size.height * 0.2);
    path.lineTo(0, size.height - roundnessFactor);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    path.lineTo(size.width - roundnessFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);
    path.lineTo(size.width, roundnessFactor * 3);
    path.quadraticBezierTo(size.width - 50, roundnessFactor,
        size.width - roundnessFactor * 2, roundnessFactor * 1.5);
    path.lineTo(
        roundnessFactor * 0.3, size.height * 0.2 - roundnessFactor * 0.1);
    path.quadraticBezierTo(0, size.height * 0.2, 0, size.height * 0.2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
