import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_theme.dart';

class CustomTickMarkShape extends SliderTickMarkShape {
  final double tickSize;

  CustomTickMarkShape({this.tickSize = 8.0});

  @override
  Size getPreferredSize({
    required SliderThemeData sliderTheme,
    bool? isEnabled,
  }) {
    return Size(tickSize, tickSize);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    Animation<double>? enableAnimation,
    TextDirection? textDirection,
    Offset? thumbCenter,
    bool? isEnabled,
    bool? isDiscrete,
  }) {
    final Paint paint = Paint()
      ..color = AppTheme.grey.withValues(alpha: 0.4)
      ..style = PaintingStyle.fill;

    context.canvas.drawCircle(center, tickSize / 2, paint);
  }
}
