import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SmartText extends StatelessWidget {
  const SmartText(
      {super.key, required this.textItems, this.color, this.fontFamily});

  final List<SmartTextItem> textItems;

  final Color? color;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    var children = textItems.map((ti) {
      return TextSpan(
          recognizer: ti.onTap != null
              ? (TapGestureRecognizer()..onTap = ti.onTap)
              : null,
          text: ti.text,
          style: TextStyle(
              decoration:  ti.isUnderLined ? TextDecoration.underline : null,
              fontSize: ti.fontSize,
              color: ti.color,
              fontWeight: ti.fontWeight));
    });

    return RichText(
      text: TextSpan(
        style: TextStyle( 
            fontFamily: AppFonts.metroPolis,
            color: color ?? AppColors.primaryTextColor),
        children: <TextSpan>[...children],
      ),
    );
  }
}

class SmartTextItem {
  SmartTextItem(
      {required this.text,
      this.fontSize,
      this.isUnderLined = false,
      this.fontWeight,
      this.color,
      this.onTap});

  final String text;
  final double? fontSize;
  final bool isUnderLined;
  final FontWeight? fontWeight;
  final Color? color;
  final Function()? onTap;
}
