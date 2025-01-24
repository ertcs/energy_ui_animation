// This class represents the state of the energy rating, including slider value, display text, and slider index.

class EnergyState {
  final double sliderValue;
  final String displayText;
  final int sliderIndex;

  EnergyState({
    required this.sliderValue,
    required this.displayText,
    required this.sliderIndex,
  });

  EnergyState copyWith({
    double? sliderValue,
    String? displayText,
    int? sliderIndex,
  }) {
    return EnergyState(
      sliderValue: sliderValue ?? this.sliderValue,
      displayText: displayText ?? this.displayText,
      sliderIndex: sliderIndex ?? this.sliderIndex,
    );
  }
}
