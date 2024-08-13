import 'package:coffee_app/components/custom_btn.dart';
import 'package:coffee_app/components/text_input.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:flutter/material.dart';

class BmiFragment extends StatelessWidget {
  const BmiFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.cardColor,
          margin: const EdgeInsets.all(15),
          // elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Calculate Your BMI",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                inputBox("Age:     "),
                const SizedBox(height: 16),
                inputBox("Height:"),
                const SizedBox(height: 16),
                inputBox("Weight:"),
                const SizedBox(height: 16),
                CustomButton(
                  context: context,
                  text: "Calculate",
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        _bmiHistorySection(),
      ],
    );
  }

  Widget _bmiHistorySection() {
    return Container(
      color: AppColors.cardColor,
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "BMI History",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                _singleBmiData(),
                const Divider(),
                _singleBmiData(),
                const Divider(),
                _singleBmiData(),
                const Divider(),
                _singleBmiData(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _singleBmiData() {
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
                "BMI Value: 24.5",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Age: 25",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Weight: 80 kg",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Height: 5f 10in",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row inputBox(String s) {
    return Row(
      children: [
        Text(
          "$s ",
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
