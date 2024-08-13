import 'package:coffee_app/components/home_icon_widget.dart';
import 'package:coffee_app/constants/color_constants.dart';
import 'package:coffee_app/constants/media_query.dart';
import 'package:coffee_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      navigateTo(context: context, screen: const RegisterScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Health App",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const HomeIconWidget(),
            ],
          ),
          Container(
            width: context.width * 0.15,
            height: context.width * 0.15,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
            ),
            child: LoadingAnimationWidget.hexagonDots(
              color: Colors.grey.shade700,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
