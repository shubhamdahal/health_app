import 'package:coffee_app/components/custom_btn.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:flutter/material.dart';

class SleepDataFragment extends StatelessWidget {
  const SleepDataFragment({super.key});

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
                  "Enter Sleep Data",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                inputBox("Slept At:"),
                const SizedBox(height: 16),
                inputBox("Woke Up At:"),
                const SizedBox(height: 16),
                CustomButton(
                  context: context,
                  text: "Add Sleep Data",
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        _sleepHistorySection(),
      ],
    );
  }

  Widget _sleepHistorySection() {
    return Container(
      color: AppColors.cardColor,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Sleep History",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                _singleSleepData(),
                const Divider(),
                _singleSleepData(),
                const Divider(),
                _singleSleepData(),
                const Divider(),
                _singleSleepData(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _singleSleepData() {
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
                "Slept Hours: 8h 20 mins",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Slept At: 22:00:00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Woke Up At: 06:20:00",
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
