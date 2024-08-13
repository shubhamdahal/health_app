import 'package:coffee_app/components/main/bmi_section.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/constants/color_constants.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BmiSection()
      ],
    );
  }
}
