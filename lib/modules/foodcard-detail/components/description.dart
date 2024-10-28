import 'package:booque_users/core/utils/textstyles.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tahu Petis",
          style: textStyles.semibold18,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Tahu Petis rasa terenak dan terpedas bisa dicoba bisa dimakan dan bisa dibeli halal tanpa pengawet",
          style: textStyles.regular12,
        )
      ],
    );
  }
}
