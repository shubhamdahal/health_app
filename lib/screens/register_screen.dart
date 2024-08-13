import 'package:coffee_app/components/custom_btn.dart';
import 'package:coffee_app/components/text_input.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:coffee_app/constants/media_query.dart';
import 'package:coffee_app/screens/login_screen.dart';
import 'package:coffee_app/screens/register_page_confirmation_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0, top: 16),
                        child: Row(
                          children: [
                            Text(
                              "Register Your Account",
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      TextInput(
                          obscure: false,
                          hintText: " Enter your  Username",
                          controller: usernameController),
                      TextInput(
                          obscure: false,
                          hintText: "Enter your phone number",
                          controller: usernameController),
                      TextInput(
                          obscure: false,
                          hintText: "Enter your email",
                          controller: usernameController),
                      TextInput(
                          obscure: true,
                          hintText: "Enter password",
                          controller: usernameController),
                      TextInput(
                          obscure: true,
                          hintText: "Confirm password",
                          controller: usernameController),
                      GestureDetector(
                          onTap: () {
                            navigateTo(
                                context: context,
                                screen: const RegisterPageConfirmation());
                          },
                          child:
                              CustomButton(context: context, text: "Register")),
                    ],
                  ),
                  const Text(
                    "OR",
                    style: TextStyle(color: Colors.white38, fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account? ",
                          style:
                              TextStyle(color: AppColors.white, fontSize: 16)),
                      GestureDetector(
                        onTap: () {
                          navigateTo(context: context, screen: const LoginScreen());
                        },
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Sign in",
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))),
                      )
                    ],
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                            "By clicking on register , you agree to our Terms and Conditions",
                            style: TextStyle(
                                color: AppColors.white, fontSize: 11)),
                      ),
                    ],
                  )
                ])),
      ),
    );
  }
}
