import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class ButtonNav extends StatelessWidget {
  final void Function(int)? onTabChange;
  const ButtonNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),

      child: GNav(
        activeColor: Colors.grey,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange:(value)=>onTabChange!(value),
        tabs: [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.shopping_bag_rounded, text: 'Cart'),
        ],
      ),
    );
  }
}
