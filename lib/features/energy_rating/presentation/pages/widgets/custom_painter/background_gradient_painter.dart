import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_theme.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;

    final Gradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.00, 0.9, 0.8],
      colors: [
        Color(0xff0E0E12),
        AppTheme.primaryColor.withValues(alpha: 0.2),
        Color(0xff0E0E12).withValues(alpha: 0.5), // black
      ],
    );

    // shader to the gradient
    final Paint paint = Paint()..shader = gradient.createShader(rect);

    // Fill the entire canvas with the gradient
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(BackgroundPainter oldDelegate) => false;
}
