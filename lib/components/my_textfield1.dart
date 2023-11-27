import 'package:flutter/material.dart';

class Mytextfield1 extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const Mytextfield1({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required InputDecoration decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility_off,
              )),
          fillColor: Colors.grey.shade300,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
