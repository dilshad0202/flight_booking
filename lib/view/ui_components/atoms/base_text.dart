import 'package:flight_book_app/utils/app_font_size.dart';
import 'package:flutter/material.dart';

class BaseText extends StatelessWidget {
  const BaseText(
    this.text, {
    super.key,
    this.color,
    this.fontSize,
    this.fontWeight = FontWeight.w500,
    this.textAlign,
  });

  final Color? color;
  final double? fontSize;
  final FontWeight fontWeight;
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight, fontSize: fontSize ?? AppFontSize.md),
    );
  }
}
