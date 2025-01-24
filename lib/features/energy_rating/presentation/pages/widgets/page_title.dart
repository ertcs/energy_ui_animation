import 'package:flutter/material.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_theme.dart';

class EnergyPageTitle extends StatelessWidget {
  const EnergyPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
      child: Text(
        AppLocale.energyTabHeading,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: AppTheme.white),
      ),
    );
  }
}
