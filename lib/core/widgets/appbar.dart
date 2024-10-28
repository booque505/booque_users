import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:flutter/material.dart';

AppBar appBarBooque(
  BuildContext context, {
  String? title,
  required bool isSearch,
  List<Widget>? actions,
}) {
  return AppBar(
    leading: InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: colorStyles.orange),
        child: const Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white,
        ),
      ),
    ),
    centerTitle: true,
    actions: actions,
    title: isSearch
        ? TextField(
            decoration: InputDecoration(
              isDense: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.grey)),
            ),
          )
        : Text(
            title ?? "",
            textAlign: TextAlign.center,
            style: textStyles.appBarTitleText,
          ),
  );
}
