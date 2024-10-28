import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:flutter/material.dart';

Widget booqueButton(String title) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 15),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: colorStyles.orange),
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: textStyles.semibold12.copyWith(color: Colors.white),
    ),
  );
}
