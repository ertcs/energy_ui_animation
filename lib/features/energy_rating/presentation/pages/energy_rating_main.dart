import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_theme.dart';
import '../../../../core/widgets/footer.dart';
import '../cubit/cubit_state.dart';
import '../cubit/energy_cubit.dart';
import 'widgets/custom_painter/background_gradient_painter.dart';
import 'widgets/custom_slider_widgets/custom_slider.dart';
import 'widgets/custom_slider_widgets/slider_label.dart';
import 'widgets/energy_icon_animation.dart';
import 'widgets/page_title.dart';

class EnergyRatingMain extends StatelessWidget {
  const EnergyRatingMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EnergyCubit(),
      child: Scaffold(
        backgroundColor: AppTheme.black,
        appBar: AppBar(
          backgroundColor: AppTheme.black,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: AppTheme.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: CustomPaint(
                          size: const Size(double.infinity, double.infinity),
                          painter: BackgroundPainter(),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 150, // Adjust as desired
                              sigmaY: 150,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppTheme.blurBlack,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Column(
                          children: [
                            EnergyPageTitle(),
                            BlocBuilder<EnergyCubit, EnergyState>(
                              builder: (context, state) {
                                final cubit = context.read<EnergyCubit>();
                                return EnergyIconAnimation(
                                  fillPercentage: cubit.getFillPercentage(),
                                );
                              },
                            ),
                            BlocBuilder<EnergyCubit, EnergyState>(
                              builder: (context, state) {
                                return Column(
                                  children: [
                                    Text(
                                      state.displayText,
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        color: AppTheme.white,
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    CustomSlider(
                                      sliderValue: state.sliderValue,
                                      onSliderValueChange: (value) {
                                        // Trigger haptic feedback
                                        HapticFeedback.lightImpact();

                                        // Update the slider value in the cubit
                                        context.read<EnergyCubit>().updateSliderValue(value);
                                      },
                                    ),
                                    SizedBox(height: 5),
                                    SliderLabel(),
                                  ],
                                );
                              },
                            ),
                            SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
