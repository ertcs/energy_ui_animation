import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_strings.dart';
import 'cubit_state.dart';

// This cubit is used to manage the state of the energy rating feature
class EnergyCubit extends Cubit<EnergyState> {
  EnergyCubit()
      : super(EnergyState(
          sliderValue: 0.0,
          displayText: AppLocale.energyLevels[0],
          sliderIndex: 0,
        ));

  void updateSliderValue(double value) {
    final sliderIndex = (value / (100 / (AppLocale.energyLevels.length - 1))).round();
    final displayText = AppLocale.energyLevels[sliderIndex];
    emit(state.copyWith(sliderValue: value, sliderIndex: sliderIndex, displayText: displayText));
  }

  double getFillPercentage() {
    switch (state.sliderIndex) {
      case 0:
        return 0.15;
      case 1:
        return 0.30;
      case 2:
        return 0.40;
      case 3:
        return 0.50;
      case 4:
        return 0.65;
      case 5:
        return 0.75;
      default:
        return 1.0;
    }
  }
}
