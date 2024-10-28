import 'package:flutter/material.dart';

import '../../../core/utils/colorstyles.dart';
import '../../../core/utils/textstyles.dart';

class ScanBar extends StatelessWidget {
  const ScanBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(color: colorStyles.lightGrey),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "You're in table",
                style: textStyles.regular12,
              ),
              Text(
                "Inside, 02",
                style: textStyles.semibold18,
              )
            ],
          ),
          Row(
            children: [
              Text(
                "Scan Again",
                style: textStyles.regular12.copyWith(color: colorStyles.orange),
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.qr_code_scanner,
                color: colorStyles.orange,
              )
            ],
          )
        ],
      ),
    );
  }
}
