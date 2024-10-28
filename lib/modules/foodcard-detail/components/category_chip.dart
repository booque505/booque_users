import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  String items = "";
  bool selected = false;
  void Function(bool)? onSelected;
  CategoryChip(
      {super.key,
      required this.items,
      required this.selected,
      required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(
        items,
        style: textStyles.regular12.copyWith(color: colorStyles.orange),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colorStyles.orange),
          borderRadius: BorderRadius.circular(10)),
      selected: selected,
      onSelected: onSelected,
    );
  }
}
