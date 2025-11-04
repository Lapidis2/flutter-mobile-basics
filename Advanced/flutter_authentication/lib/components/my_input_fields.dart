

import 'package:flutter/material.dart';

class MyInputFields extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData prefixIcon;
  final TextEditingController controller;
  const MyInputFields({
    super.key,
    required this.controller,
    required this.hintText,
     this.obscureText=false,
    required this.prefixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          
          prefixIcon: Icon(prefixIcon),
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
