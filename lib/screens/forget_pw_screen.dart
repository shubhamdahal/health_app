import 'package:coffee_app/components/custom_btn.dart';
import 'package:coffee_app/components/home_icon_widget.dart';
import 'package:coffee_app/components/text_input.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:coffee_app/constants/media_query.dart';
import 'package:coffee_app/screens/pw_reset_confirmation_screen.dart';
import 'package:flutter/material.dart';

class ForgetPwScreen extends StatefulWidget {
  const ForgetPwScreen({super.key});

  @override
  State<ForgetPwScreen> createState() => _ForgetPwScreenState();
}

class _ForgetPwScreenState extends State<ForgetPwScreen> {
  TextEditingController pwController = TextEditingController();
  TextEditingController confirmPwController = TextEditingController();

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
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(child: HomeIconWidget()),
                const SizedBox(height: 20),
                const Text(
                  "Set up a new password",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "To protect your account, make sure your password:",
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    ". is longer than 8 characters.\n"
                    ". should not contain your name.\n"
                    ". must contain a mix of letters, numbers, and special characters (e.g., @#&).",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextInput(
                    obscure: true,
                    hintText: "Enter new password",
                    controller: pwController),
                TextInput(
                    obscure: true,
                    hintText: "Confirm new password",
                    controller: confirmPwController),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    navigateTo(
                        context: context,
                        screen: const PasswordResetConfirmationScreen());
                  },
                  child: Center(
                    child: CustomButton(context: context, text: 'Reset'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
