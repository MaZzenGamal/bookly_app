import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.borderRadius,
      this.backgroundColor,
      this.foregroundColor,
      required this.text, this.textStyle});

  final void Function()? onPressed;
  final BorderRadiusGeometry borderRadius;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 48,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor),
          child:  Text(text, style: textStyle,)),
    );
  }
}
