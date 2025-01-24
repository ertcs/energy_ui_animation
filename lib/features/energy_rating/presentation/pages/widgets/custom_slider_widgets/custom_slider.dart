import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_theme.dart';
import 'custom_thumb_icon.dart';
import 'custom_tick_mark.dart';

class CustomSlider extends StatelessWidget {
  final double sliderValue;
  final Function(double)? onSliderValueChange;
  const CustomSlider({super.key, required this.sliderValue, required this.onSliderValueChange});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Center(
        child: SliderTheme(
          data: SliderThemeData(
            trackHeight: 24,
            activeTrackColor: AppTheme.sliderTrackColor,
            inactiveTrackColor: AppTheme.sliderTrackColor,
            tickMarkShape: CustomTickMarkShape(tickSize: 4.0),
            thumbShape: CustomIconThumbShape(
              thumbSize: 48.0,
              innerCircleSize: 32.0,
              ringColor: AppTheme.grey,
              innerCircleColor: AppTheme.white,
              iconColor: AppTheme.grey,
              icon: Icons.code,
            ),
          ),
          child: Slider(
            value: sliderValue,
            onChanged: onSliderValueChange,
            min: 0,
            max: 100,
            divisions: 6,
          ),
        ),
      ),
    );
  }
}
