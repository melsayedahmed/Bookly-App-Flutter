import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.textColor,
    required this.text,
    required this.backgroundColor,
    this.borderRadius,
    this.fontSize,
    this.onPressed,
  });
  final Color textColor;
  final String text;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
