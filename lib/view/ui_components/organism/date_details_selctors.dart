import 'package:flight_book_app/utils/app_font_size.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flight_book_app/view/ui_components/atoms/container.dart';
import 'package:flight_book_app/view/ui_components/molecules/inputs/base_text_field.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateDetailsSelectors extends StatefulWidget {
  const DateDetailsSelectors(
      {super.key,
      required this.cabinClassChange,
      required this.onDeparutureChange,
      required this.onReturnChange,
      required this.onTravelerChange});

  final void Function(DateTime) onDeparutureChange;
  final void Function(DateTime) onReturnChange;
  final void Function(String) onTravelerChange;
  final void Function(String) cabinClassChange;

  @override
  State<DateDetailsSelectors> createState() => _DateDetailsSelectorsState();
}

class _DateDetailsSelectorsState extends State<DateDetailsSelectors> {
  final TextEditingController _departureController = TextEditingController();

  final TextEditingController _returnController = TextEditingController();

  final TextEditingController _travelersController = TextEditingController();

  final TextEditingController _cabinClassController = TextEditingController();

  final DateFormat formatter = DateFormat('EEE, dd MMM - yyyy');

  @override
  Widget build(BuildContext context) {
    return WithLayout(spacing: AppSpacing.sm, children: [
      WithLayout(
          spacing: AppSpacing.sm,
          orientation: LayoutOrientation.horizontal,
          children: [
            Expanded(
              child: BaseTextFormField(
                  onPress: () async {
                    changeDateTime((date) {
                      widget.onDeparutureChange(date);
                      _departureController.text = formatter.format(date);
                    });
                  },
                  readOnly: true,
                  suffixIcon: Icons.calendar_month,
                  controller: _departureController,
                  labelText: "Departure"),
            ),
            Expanded(
              child: BaseTextFormField(
                  onPress: () {
                    changeDateTime((date) {
                      widget.onDeparutureChange(date);
                      _returnController.text = formatter.format(date);
                    });
                  },
                  readOnly: true,
                  isActive: true,
                  suffixIcon: Icons.calendar_month,
                  controller: _returnController,
                  labelText: "Return"),
            )
          ]),
      WithLayout(
          spacing: AppSpacing.sm,
          orientation: LayoutOrientation.horizontal,
          children: [
            Expanded(
              child: BaseTextFormField(
                  readOnly: true,
                  onPress: () {
                    showPicker("Travelers", ["1", "2", "3", "4", "5"], (value) {
                      widget.onTravelerChange(value);
                      _travelersController.text = "$value Passenger";
                    });
                  },
                  controller: _travelersController,
                  labelText: "Travelers"),
            ),
            Expanded(
              child: BaseTextFormField(
                readOnly: true,
                  onPress: () {
                    showPicker("Cabin Class", [
                      "Bussiness Class",
                      "Economic Class",
                    ], (value) {
                      widget.onTravelerChange(value);
                      _cabinClassController.text = value;
                    });
                  },
                  controller: _cabinClassController,
                  labelText: "Cabin Class"),
            )
          ])
    ]);
  }

  Future<void> showPicker(
      String title, List<String> values, void Function(String) onChange) async {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: CustomContainer(
                padding: const EdgeInsets.all(AppSpacing.xl),
                height: 250,
                child: WithLayout(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BaseText(
                        title,
                        fontWeight: FontWeight.bold,
                        fontSize: AppFontSize.lg,
                      ),
                      const Divider(),
                      Expanded(
                        child: ListView.builder(
                            itemCount: values.length,
                            itemBuilder: (context, i) {
                              return TextButton(
                                  onPressed: () {
                                    onChange(values[i]);
                                    Navigator.pop(context);
                                  },
                                  child: BaseText('${values[i]} Passenger'));
                            }),
                      ),
                    ])),
          );
        });
  }

  Future<void> changeDateTime(Function(DateTime) function) async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2050));
    if (dateTime != null) {
      function(dateTime);
    }
  }
}
