import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavbar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MyBottomNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        tabBackgroundColor: Colors.grey.shade100,
        color: Colors.grey[300],
        activeColor: Colors.grey[700],
        tabActiveBorder: Border.all(color: Colors.white),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        gap: 8,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          )
        ],
      ),
    );
  }
}
