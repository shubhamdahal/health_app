import 'package:coffee_app/components/custom_btn.dart';
import 'package:coffee_app/components/done_icon_widget.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:coffee_app/constants/media_query.dart';
import 'package:coffee_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class PasswordResetConfirmationScreen extends StatelessWidget {
  const PasswordResetConfirmationScreen({super.key});

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
          child: SizedBox(
            width: context.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const DoneIconWidget(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  child: const Text(
                    "Password has been\nSuccessfully reset",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    navigateTo(context: context, screen: const LoginScreen());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(36.0),
                    child: CustomButton(context: context, text: "Login"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
