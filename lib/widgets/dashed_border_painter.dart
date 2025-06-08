import 'dart:ui';

import 'package:flutter/material.dart';

class DashedBorderPainter extends CustomPainter {
  final double strokeWidth;
  final double dashWidth;
  final double dashSpace;
  final Color color;
  final BorderRadius? borderRadius;

  DashedBorderPainter({
    this.strokeWidth = 1,
    this.dashWidth = 5,
    this.dashSpace = 5,
    this.color = Colors.black,
    this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Path path = Path();

    if (borderRadius != null) {
      final RRect rRect = RRect.fromRectAndCorners(
        Offset.zero & size,
        topLeft: borderRadius!.topLeft,
        topRight: borderRadius!.topRight,
        bottomLeft: borderRadius!.bottomLeft,
        bottomRight: borderRadius!.bottomRight,
      );
      path.addRRect(rRect);
    } else {
      path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));
    }

    final PathMetric  pathMetric = path.computeMetrics().first;
    double distance = 0.0;
    while (distance < pathMetric.length) {
      canvas.drawPath(
        pathMetric.extractPath(distance, distance + dashWidth),
        paint,
      );
      distance += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    if (oldDelegate is DashedBorderPainter) {
      return oldDelegate.strokeWidth != strokeWidth ||
          oldDelegate.dashWidth != dashWidth ||
          oldDelegate.dashSpace != dashSpace ||
          oldDelegate.color != color ||
          oldDelegate.borderRadius != borderRadius;
    }
    return true;
  }
}