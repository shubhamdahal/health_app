import 'package:coffee_app/constants/media_query.dart';
import 'package:flutter/material.dart';

enum IconType { big, medium }

class HomeIconWidget extends StatelessWidget {
  final IconType iconType;

  const HomeIconWidget({
    super.key,
    this.iconType = IconType.big,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(55), color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: iconType == IconType.big ? 32: 8, vertical: iconType == IconType.big ? 12: 0),
              child: Container(
                  height:
                      iconType == IconType.big ? context.height * 0.09 : 50,
                  width: iconType == IconType.big ? context.width * 0.2 : 40,
                  child: Image.asset('assets/home.png')),
            )));
  }
}
