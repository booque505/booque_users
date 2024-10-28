import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:flutter/material.dart';

class ReviewUserInfo extends StatelessWidget {
  const ReviewUserInfo({super.key});

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
            "Your Name",
            style: textStyles.regular12,
          ),
          Row(
            children: [
              Text(
                "Lylianna",
                style: textStyles.semibold12,
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.edit,
                color: colorStyles.orange,
              )
            ],
          )
        ],
      ),
    );
  }
}
