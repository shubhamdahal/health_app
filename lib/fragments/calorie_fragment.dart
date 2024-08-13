import 'package:coffee_app/components/custom_btn.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CalorieFragment extends StatelessWidget {
  const CalorieFragment({super.key});

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
                  "Add Steps Data",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                inputBox("Distance Travelled:"),
                const SizedBox(height: 16),
                inputBox("Steps:"),
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
        _calorieHistorySection(),
      ],
    );
  }

  Widget _calorieHistorySection() {
    return Container(
      color: AppColors.cardColor,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Calorie History",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                _singleCalorieData(),
                const Divider(),
                _singleCalorieData(),
                const Divider(),
                _singleCalorieData(),
                const Divider(),
                _singleCalorieData(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _singleCalorieData() {
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
                "Calories: 222 kcal",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Distance Travelled: 5.80 km",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Steps: 7546",
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
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}
