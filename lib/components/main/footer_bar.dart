import 'package:coffee_app/constants/color_constants.dart';
import 'package:flutter/material.dart';

class FooterBar extends StatefulWidget {
  final Null Function(dynamic value) onChange;
  const FooterBar({super.key, required this.onChange});

  @override
  State<FooterBar> createState() => _FooterBarState();
}

class _FooterBarState extends State<FooterBar> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
        color: Colors.black,
        width: 1,
      ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navItem("HOME\nPAGE", 0),
          navItem("BMI", 1),
          navItem("CALORIE\nDATA", 2),
          navItem("SLEEP\nDATA", 3),
          navItem("WATER\nINTAKE", 4),
        ],
      ),
    );
  }

  Widget navItem(String s, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        current = index;
        setState(() {});
      },
      child: CircleAvatar(
        backgroundColor: current == index ? AppColors.black : AppColors.white,
        radius: 30,
        child: Text(
          s,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10,
            color: current == index ? AppColors.white : AppColors.black,
          ),
        ),
      ),
    );
  }
}
