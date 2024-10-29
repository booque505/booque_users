import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: colorStyles.orange),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tambah",
              style: textStyles.regular12.copyWith(color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Rp 25.000",
              style: textStyles.regular12.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
