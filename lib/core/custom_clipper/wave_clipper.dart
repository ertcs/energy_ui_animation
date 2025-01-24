import 'dart:math' as math;
import 'package:flutter/material.dart';

// CustomClipper for the wave shape
class WaveClipper extends CustomClipper<Path> {
  final double move;
  final double fillPercentage;

  WaveClipper({required this.move, required this.fillPercentage});

  @override
  Path getClip(Size size) {
    double waveHeight = size.height * fillPercentage;
    double amplitude = 4.0; // Reduced amplitude for slower waves
    double frequency = size.width / 0.4; //  frequency for smoother waves

    Path path = Path();
    path.lineTo(0, size.height - waveHeight);

    for (double x = 0; x <= size.width; x++) {
      double y = amplitude * math.sin((x / frequency * 2 * math.pi) + move * 2 * math.pi);
      path.lineTo(x, size.height - waveHeight + y);
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
