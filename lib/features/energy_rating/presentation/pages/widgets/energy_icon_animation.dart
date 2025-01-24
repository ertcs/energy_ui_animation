import 'package:flutter/material.dart';

import '../../../../../core/constants/app_theme.dart';
import '../../../../../core/custom_clipper/wave_clipper.dart';
import 'custom_painter/energy_icon_painter.dart';

class EnergyIconAnimation extends StatefulWidget {
  final double fillPercentage;
  const EnergyIconAnimation({super.key, required this.fillPercentage});

  @override
  State<EnergyIconAnimation> createState() => _EnergyIconAnimationState();
}

class _EnergyIconAnimationState extends State<EnergyIconAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Center(
            child: CustomPaint(
              size: const Size(188, 244),
              painter: EnergyIconPainter(
                color: AppTheme.primaryColor.withValues(alpha: 0.3),
              ),
            ),
          ),
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return ClipPath(
                  clipper: WaveClipper(
                    move: _controller.value,
                    fillPercentage: widget.fillPercentage,
                  ),
                  child: CustomPaint(
                    size: Size(188, 244),
                    painter: EnergyIconPainter(
                      color: AppTheme.primaryColor,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
