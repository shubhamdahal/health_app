import 'package:flutter/material.dart';
import 'package:coffee_app/constants/color_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // Back button and Profile Picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 10),

            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey.shade300,
              child: const Text(
                "Profile Picture",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10,),
              ),
            ),
            // User Name
            const Text(
              "Isha Ghimire",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
            const SizedBox(height: 30),
            const Divider(color: Colors.black,),
            const SizedBox(height: 30),
            
            // Blood Group
            _infoBox("Blood Group", "O +ve"),
            const SizedBox(height: 20),
            // Emergency Contact
            _infoBox("Emergency Contact", "+61 491 570 159"),
            const Spacer(),
            // Logout Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () {
                  // Handle logout logic here
                },
                child: const Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Bottom Navigation Bar
          ],
        ),
      ),
    );
  }

  Widget _infoBox(String title, String info) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            info,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
