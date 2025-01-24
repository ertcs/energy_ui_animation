import 'package:flutter/material.dart';

class EnergyIconPainter extends CustomPainter {
  final Color color;

  EnergyIconPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(187.033, 89.2172);
    path_0.cubicTo(185.454, 86.0254, 182.183, 84.0096, 178.602, 84.0096);
    path_0.lineTo(106.742, 84.0096);
    path_0.cubicTo(105.549, 84.0096, 104.622, 82.9725, 104.754, 81.7873);
    path_0.lineTo(112.74, 10.3746);
    path_0.cubicTo(113.21, 6.2122, 110.822, 2.25513, 106.912, 0.687241);
    path_0.cubicTo(102.993, -0.899317, 98.5091, 0.332599, 95.943, 3.64571);
    path_0.lineTo(1.94829, 124.971);
    path_0.cubicTo(-0.232387, 127.789, -0.617767, 131.597, 0.970744, 134.789);
    path_0.cubicTo(2.55925, 137.99, 5.83027, 140.006, 9.41147, 140.006);
    path_0.lineTo(81.2714, 140.006);
    path_0.cubicTo(82.464, 140.006, 83.3915, 141.043, 83.259, 142.228);
    path_0.lineTo(75.2736, 213.641);
    path_0.cubicTo(74.8036, 217.803, 77.1911, 221.76, 81.1012, 223.328);
    path_0.cubicTo(82.2386, 223.785, 83.4323, 224, 84.6072, 224);
    path_0.cubicTo(87.4647, 224, 90.2469, 222.703, 92.061, 220.36);
    path_0.lineTo(186.056, 99.0352);
    path_0.cubicTo(188.236, 96.2167, 188.612, 92.409, 187.033, 89.2172);
    path_0.close();

    Paint paint = Paint()..color = color;
    canvas.drawPath(path_0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
