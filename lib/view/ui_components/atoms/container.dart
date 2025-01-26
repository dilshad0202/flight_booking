import 'package:flight_book_app/utils/app_component_size.dart';
import 'package:flight_book_app/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      this.color,
      this.height,
      this.margin,
      this.padding,
      this.radius,
      this.showShadow = false,
      this.linearGradientEnd,
      this.linearGradientStart,
      this.child,
      this.width});

  final Color? color;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? radius;
  final bool showShadow;
  final Color? linearGradientStart;
  final Color? linearGradientEnd;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          gradient: (linearGradientStart != null && linearGradientEnd != null)
              ? LinearGradient(
                  colors: [linearGradientStart!, linearGradientEnd!])
              : null,
          boxShadow: showShadow ? AppStyle.boxShadow : [],
          color: color,
          borderRadius:
              BorderRadius.circular(radius ?? AppComponentSize.radius)),
      margin: margin,
      padding: padding,
      child: child,
    );
  }
}
