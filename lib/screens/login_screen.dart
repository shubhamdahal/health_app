import 'package:coffee_app/components/custom_btn.dart';
import 'package:coffee_app/components/home_icon_widget.dart';
import 'package:coffee_app/components/text_input.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:coffee_app/constants/media_query.dart';
import 'package:coffee_app/screens/forget_pw_screen.dart';
import 'package:coffee_app/screens/main/home_page.dart';
import 'package:coffee_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    const HomeIconWidget(),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0, top: 16),
                      child: Row(
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0, top: 16),
                      child: Row(
                        children: [
                          Text(
                            "Sign in to  your Account",
                            style:
                                TextStyle(color: AppColors.white, fontSize: 24),
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
                    GestureDetector(
                        onTap: () {
                          navigateTo(
                              context: context, screen: const HomePage());
                        },
                        child: CustomButton(context: context, text: "Login")),
                    GestureDetector(
                      onTap: () {
                        navigateTo(context: context, screen: const ForgetPwScreen());
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Forget Password?  ",
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "OR",
                  style: TextStyle(color: Colors.white38, fontSize: 20),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("Don't have an account? ",
                      style: TextStyle(color: AppColors.white, fontSize: 20)),
                  GestureDetector(
                    onTap: () {
                      navigateTo(context: context, screen: const RegisterScreen());
                    },
                    child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Sign up",
                            style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20))),
                  )
                ])
              ]),
        ),
      ),
    );
  }
}
