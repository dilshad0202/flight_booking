import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    this.showBackbutton = true,
    required this.title,
    this.onBackPress,
    super.key,
  });

  final bool showBackbutton;
  final String title;
  final void Function()? onBackPress;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        leading: (showBackbutton
            ? IconButton(
                onPressed: onBackPress ?? () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back))
            : null),
        centerTitle: false,
        automaticallyImplyLeading: true,
        title: BaseText(
          title,
          fontSize: 16,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 48);
}
