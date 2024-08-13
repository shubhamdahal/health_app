import 'package:coffee_app/components/custom_btn.dart';
import 'package:coffee_app/components/home_icon_widget.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class ResetCodeScreen extends StatelessWidget {
  const ResetCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
    );
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              const HomeIconWidget(),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Code sent please check your inbox",
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Enter 6 digit Code",
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Pinput(
                      length: 6,
                      defaultPinTheme: defaultPinTheme,
                      onCompleted: (pin) => print(pin),
                      showCursor: true,
                      cursor: Container(
                        width: 2,
                        height: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: CustomButton(context: context, text: "Confirm")),
              ),
              const SizedBox(),
              const Text(
                "Didn't get code? Resend Code.",
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
            ])));
  }
}
