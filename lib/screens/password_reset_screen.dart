import 'package:coffee_app/components/custom_btn.dart';
import 'package:coffee_app/components/home_icon_widget.dart';
import 'package:coffee_app/components/text_input.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:coffee_app/constants/media_query.dart';
import 'package:coffee_app/screens/reset_code_screen.dart';
import 'package:flutter/material.dart';

class PasswordResetScreen extends StatefulWidget {
  const PasswordResetScreen({super.key});

  @override
  State<PasswordResetScreen> createState() => _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
  TextEditingController resetController = TextEditingController();
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
          child: Column(
            children: [
              const HomeIconWidget(),
              const SizedBox(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Reset Password",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Enter your registered email or phone number",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              TextInput(
                  obscure: false,
                  hintText: "Enter email or phone number",
                  controller: resetController),
              const SizedBox(),
              GestureDetector(
                  onTap: () {
                    navigateTo(context: context, screen: const ResetCodeScreen());
                  },
                  child: CustomButton(context: context, text: "Send Code")),
            ],
          ),
        ));
  }
}
