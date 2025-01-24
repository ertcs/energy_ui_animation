import 'package:flutter/material.dart';

import '../constants/app_strings.dart';
import 'custom_button.dart';

// Energy page footer
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomButton(
            isEnabled: false,
            label: AppLocale.cancelLabel,
            onPressed: () {},
          ),
          CustomButton(
            isEnabled: true,
            label: AppLocale.continueLabel,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
