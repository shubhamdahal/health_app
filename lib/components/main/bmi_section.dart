import 'package:coffee_app/utils/chart.dart';
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

class BmiSection extends StatelessWidget {
  const BmiSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("AVERAGE BMI"),
        Text("BMI: 15.5"),
        Text("Average Weight: 70kg"),
        RadialGauge(
          value: 50,
          axis: GaugeAxis(
              min: 0,
              max: 100,
              pointer: GaugePointer.needle(
                width: 16,
                height: 100,
                borderRadius: 16,
                color: Color(0xFF193663),
              ),
              degrees: 180,
              style: GaugeAxisStyle(
                thickness: 20,
                background: Color(0xFFDFE2EC),
                segmentSpacing: 4,
              ),
              progressBar: GaugeProgressBar.rounded(
                color: Color(0xFFB4C2F8),
              ),
              segments: [
                GaugeSegment(
                  from: 0,
                  to: 33.3,
                  color: Color(0xFFD9DEEB),
                  cornerRadius: Radius.zero,
                ),
                GaugeSegment(
                  from: 33.3,
                  to: 66.6,
                  color: Color(0xFFD9DEEB),
                  cornerRadius: Radius.zero,
                ),
                GaugeSegment(
                  from: 66.6,
                  to: 100,
                  color: Color(0xFFD9DEEB),
                  cornerRadius: Radius.zero,
                ),
              ]),
        ),
      ],
    );
  }
}
