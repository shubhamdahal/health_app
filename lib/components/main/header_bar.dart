
import 'package:coffee_app/components/home_icon_widget.dart';
import 'package:coffee_app/constants/media_query.dart';
import 'package:coffee_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeIconWidget(
            iconType: IconType.medium,
          ),
          GestureDetector(
            onTap: () {
              navigateTo(context: context, screen: const ProfileScreen());
            },
            child: CircleAvatar(
              child: Text("PP"),
            ),
          )
        ],
      ),
    );
  }
}