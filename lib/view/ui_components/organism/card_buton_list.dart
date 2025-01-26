

import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/view/ui_components/molecules/inputs/card_button.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flutter/material.dart';

class CardButonList extends StatefulWidget {
  const CardButonList({super.key,required this.dataList,required this.onPress});

  final List<CardButtonListData> dataList;
  final void Function() onPress;

  @override
  State<CardButonList> createState() => _CardButonListState();
}

class _CardButonListState extends State<CardButonList> {
  final ValueNotifier<int?> _selectdIndex = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ValueListenableBuilder(
        valueListenable: _selectdIndex,
        builder: (context, value, child) => 
         ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.dataList.length,
          shrinkWrap: true,
          itemBuilder: (context,i){
            return WithPaddingEnd(
              padding: AppSpacing.xxs,
              child: CardButton(
                onPress: () {
                  _selectdIndex.value = i;
                  widget.onPress();
                },
                title: widget.dataList[i].title,
              subtitle: widget.dataList[i].subtitle,
              isSelected: value == i,
              backgroundColor: AppColors.backgroundSecondary,
              ),
            );
          },
        ),
      ),
    );
  }
}


class CardButtonListData{

CardButtonListData({
  required this.title,
  required this.onPress,
  this.subtitle
});


final String title;
final String? subtitle;
final void Function() onPress;

}