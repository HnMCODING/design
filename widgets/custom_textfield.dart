import 'package:flutter/material.dart';

import '../helper/theme_helper.dart';

class CustomTextField1 extends StatelessWidget {
  final String? hintText;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomTextField1({
    Key? key,
    this.contentPadding = const EdgeInsets.fromLTRB(13, 15, 13, 15),
    this.controller,
    this.obscureText = false,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: ThemeHelper.grey2,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: contentPadding,
        filled: true,
        fillColor: const Color(0xfff7f8f9),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeHelper.grey1),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeHelper.grey1, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
