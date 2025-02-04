// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BaseTextField extends StatelessWidget {
  const BaseTextField({
    Key? key,
    this.hintText,
    this.borderRadius,
    this.text,
    this.centerText = false,
    this.style,
    this.fillColor,
    this.hoverColor,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  final String? hintText;
  final String? text;
  final double? borderRadius;
  final bool centerText;
  final TextStyle? style;
  final Color? fillColor;
  final Color? hoverColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(text: text),
      scrollPadding: EdgeInsets.zero,
      maxLines: 1,
      textAlign: centerText ? TextAlign.center : TextAlign.start,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        fillColor: fillColor,
        hoverColor: hoverColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
