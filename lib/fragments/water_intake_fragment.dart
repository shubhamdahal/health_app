import 'package:flutter/material.dart';
import 'package:coffee_app/components/custom_btn.dart';
import 'package:coffee_app/constants/color_constants.dart';

class WaterIntakeFragment extends StatelessWidget {
  const WaterIntakeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.cardColor,
          margin: const EdgeInsets.all(15),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Water Consumed",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                inputBox("Water (in litre):"),
                const SizedBox(height: 16),
                inputBox("Start Time:"),
                const SizedBox(height: 16),
                inputBox("End Time:"),
                const SizedBox(height: 16),
                CustomButton(
                  context: context,
                  text: "Calculate",
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        _waterHistorySection(),
      ],
    );
  }

  Widget _waterHistorySection() {
    return Container(
      color: AppColors.cardColor,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Water Consumed History",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                _singleWaterData(),
                const Divider(),
                _singleWaterData(),
                const Divider(),
                _singleWaterData(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _singleWaterData() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date: 2024-04-27",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Water Consumed: 2 litre",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Time Interval: 2 hours 20 mins",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row inputBox(String labelText) {
    return Row(
      children: [
        Text(
          "$labelText ",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(0),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            keyboardType: TextInputType.datetime,
          ),
        ),
      ],
    );
  }
}
