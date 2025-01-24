import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/constants/app_theme.dart';

class SliderLabel extends StatelessWidget {
  const SliderLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              AppLocale.sliderLabelWorst,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: AppTheme.white.withValues(alpha: 0.5),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              AppLocale.sliderLabelBest,
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: AppTheme.white.withValues(alpha: 0.5),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )
      ],
    );
  }
}
