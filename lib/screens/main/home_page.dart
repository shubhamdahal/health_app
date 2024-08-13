import 'package:coffee_app/components/main/footer_bar.dart';
import 'package:coffee_app/components/main/header_bar.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:coffee_app/fragments/bmi_fragment.dart';
import 'package:coffee_app/fragments/calorie_fragment.dart';
import 'package:coffee_app/fragments/home_fragment.dart';
import 'package:coffee_app/fragments/sleep_data_fragment.dart';
import 'package:coffee_app/fragments/water_intake_fragment.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentScreen = 0;
  final List<Widget> _screens = [
    const HomeFragment(),
    const BmiFragment(),
    const CalorieFragment(),
    const SleepDataFragment(),
    const WaterIntakeFragment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderBar(),
              _screens[currentScreen],
            ],
          ),
        ),
      ),
      bottomNavigationBar: FooterBar(onChange: (value) {
        currentScreen = value;
        setState(() {});
      }),
    );
  }
}
