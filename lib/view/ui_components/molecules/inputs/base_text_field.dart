import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_component_size.dart';
import 'package:flight_book_app/utils/app_font_size.dart';
import 'package:flutter/material.dart';

class BaseTextFormField extends StatelessWidget {
  const BaseTextFormField(
      {super.key,
      required this.controller,
      this.readOnly = false,
      required this.labelText,
      this.suffixIcon,
       this.onChange,
        this.onPress,
      this.isActive = true,});

  final TextEditingController controller;
  final bool readOnly;
  final String labelText;
  final bool isActive;
  final IconData? suffixIcon;
  final void Function(String)? onChange;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onPress,
      onChanged: (value) => onChange!= null ? onChange!(value) : null,
      style:  TextStyle(
        fontSize: AppFontSize.sm,
        color: isActive ? AppColors.secondaryTextColor : AppColors.textFieldIncativeColor
      ),
      readOnly: readOnly,
      onTapOutside: (event) => FocusScope.of(context).unfocus,
      controller: controller,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          fillColor: AppColors.backgroundSecondary,
          filled: true,
          suffixIcon: Icon(
            suffixIcon,
            color: isActive
                ? AppColors.secondaryIconColor
                : AppColors.textFieldIncativeColor,
          ),
          floatingLabelStyle: _labelStyle(true),
          labelText: labelText,
          labelStyle: _labelStyle(false),
          border: _outlineInputBorder(),
          enabledBorder: _outlineInputBorder(),
          focusedBorder: _outlineInputBorder(),
          focusedErrorBorder: _outlineInputBorder(),
          disabledBorder: _outlineInputBorder(),
          errorBorder: _outlineInputBorder()),
    );
  }

  TextStyle _labelStyle(bool showBackgroundFill) => TextStyle(
      backgroundColor: showBackgroundFill
          ? isActive
              ? AppColors.textFieldActiveLabelColor
              : AppColors.textFieldIncativeColor
          : null);

  OutlineInputBorder _outlineInputBorder() => OutlineInputBorder(
      borderRadius:
          BorderRadius.circular(AppComponentSize.textFieldBorderRadius),
      borderSide: BorderSide(
          color: isActive
              ? AppColors.borderColor
              : AppColors.textFieldIncativeColor,
          width: 0.5));
}
