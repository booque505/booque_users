import 'package:booque_users/core/utils/textstyles.dart';
import 'package:flutter/material.dart';

class TableInfo extends StatelessWidget {
  const TableInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), border: Border.all()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "You're in table",
            style: textStyles.regular12,
          ),
          Text(
            "Inside, 02",
            style: textStyles.semibold12,
          )
        ],
      ),
    );
  }
}
