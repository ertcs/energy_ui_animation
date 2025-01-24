import 'package:flutter/material.dart';

import '../constants/app_theme.dart';

// custom button with and without background
class CustomButton extends StatelessWidget {
  final bool isEnabled;
  final String label;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.isEnabled,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isEnabled ? AppTheme.primaryColor : Colors.transparent,
          minimumSize: const Size(120, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(isEnabled ? 100 : 0),
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isEnabled ? AppTheme.fontBlack : AppTheme.disableFontColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
