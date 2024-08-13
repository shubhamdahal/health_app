
import 'package:coffee_app/constants/color_constants.dart';
import 'package:coffee_app/constants/media_query.dart';
import 'package:flutter/material.dart';

class DoneIconWidget extends StatelessWidget {
  const DoneIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 32, vertical: 12),
          child: Container(
              // height: context.height * 0.09,
              width: context.width * 0.35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check,
                    size: context.width * 0.25,
                    color: AppColors.iconBlue,
                  ),
                ],
              )),
        )));
  }
}
