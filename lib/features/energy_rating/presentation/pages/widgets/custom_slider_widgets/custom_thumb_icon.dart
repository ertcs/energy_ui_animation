import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_theme.dart';

class CustomIconThumbShape extends SliderComponentShape {
  final double thumbSize; // Overall size of the thumb
  final double innerCircleSize; // Size of the inner circle
  final Color ringColor; // Color of the outer transparent ring
  final Color innerCircleColor; // Color of the inner circle
  final Color iconColor; // Color of the icon
  final IconData icon; // Icon to display

  CustomIconThumbShape({
    this.thumbSize = 48.0,
    this.innerCircleSize = 32.0,
    this.ringColor = AppTheme.grey,
    this.innerCircleColor = AppTheme.white,
    this.iconColor = AppTheme.grey,
    this.icon = Icons.code, // Default icon
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(thumbSize, thumbSize);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    // Outer transparent ring
    final Paint ringPaint = Paint()
      ..color = ringColor.withValues(alpha: 0.3)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, thumbSize / 2, ringPaint);

    // Inner white circle
    final Paint circlePaint = Paint()
      ..color = innerCircleColor
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, innerCircleSize / 2, circlePaint);

    // Draw the icon
    TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(
          fontSize: 18,
          fontFamily: icon.fontFamily,
          color: iconColor,
        ),
      ),
      textAlign: TextAlign.center,
      textDirection: textDirection,
    );

    textPainter.layout();
    final Offset iconOffset = Offset(
      center.dx - textPainter.width / 2,
      center.dy - textPainter.height / 2,
    );
    textPainter.paint(canvas, iconOffset);
  }
}
