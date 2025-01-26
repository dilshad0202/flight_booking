

import 'package:flight_book_app/constants/src.dart';
import 'package:flight_book_app/utils/app_component_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({super.key,this.backGroundColor,required this.iconSrc,this.radius});


  final Color? backGroundColor;
  final String iconSrc;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backGroundColor,
      radius: AppComponentSize.iconCricleRadius,
      child: SvgPicture.asset("$kIconsSrc/upDown.svg"),
      
    );
  }
}