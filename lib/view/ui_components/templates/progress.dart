

import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  const Progress({super.key,required this.title});


  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BaseText("$title - Dev in Progress"),
    );
  }
}