import 'package:coffee_app/components/custom_btn.dart';
import 'package:coffee_app/components/text_input.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:coffee_app/constants/media_query.dart';
import 'package:coffee_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

class BeforeLoginPopupScreen extends StatefulWidget {
  const BeforeLoginPopupScreen({super.key});

  @override
  State<BeforeLoginPopupScreen> createState() => _BeforeLoginPopupScreenState();
}

class _BeforeLoginPopupScreenState extends State<BeforeLoginPopupScreen> {
  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          leading: const BackButton(
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.bgColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Let's Get Started",
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: TextInput(
                      obscure: false,
                      hintText: " Enter your  Age",
                      controller: ageController),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: TextInput(
                      obscure: false,
                      hintText: "Enter your Height (in cm)",
                      controller: heightController),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: TextInput(
                      obscure: false,
                      hintText: "Enter your weight",
                      controller: weightController),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: TextInput(
                      obscure: false,
                      hintText: "Enter your blood group",
                      controller: bloodGroupController),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: TextInput(
                      obscure: false,
                      hintText: "Enter your phone number",
                      controller: phoneNumberController),
                ),
                GestureDetector( 
                    onTap: () {
                      navigateTo(context: context, screen: const RegisterScreen());
                    },
                    child: CustomButton(context: context, text: "Let's go ")),
              ],
            ),
          ),
        ));
  }
}
