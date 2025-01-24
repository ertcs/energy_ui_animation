import 'package:flutter/material.dart';

import 'features/energy_rating/presentation/pages/energy_rating_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Energy Slider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: false,
          fontFamily: 'PPNeueMontreal'),
      home: const EnergyRatingMain(),
    );
  }
}
