import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/navigator.dart';
import 'package:booque_users/modules/payment/payment_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/textstyles.dart';

class BottomsheetOrder extends StatelessWidget {
  const BottomsheetOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Detail",
                style: textStyles.semibold18,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Items",
                          style: textStyles.regular12,
                        ),
                        Text(
                          "4 Item",
                          style: textStyles.regular12,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: textStyles.regular12,
                        ),
                        Text(
                          "Rp 100.000",
                          style: textStyles.regular12,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tax",
                          style: textStyles.regular12,
                        ),
                        Text(
                          "Rp 25.000",
                          style: textStyles.regular12,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: textStyles.regular12,
                        ),
                        Text(
                          "Rp 102.500",
                          style: textStyles.regular12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Payment Method",
                style: textStyles.semibold18,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gopay",
                        style: textStyles.regular16,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () => navigatorBooque.pushRight(context, PaymentScreen()),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colorStyles.orange),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bayar",
                    style: textStyles.regular12.copyWith(color: Colors.white),
                  ),
                  Text(
                    "rp 25.000",
                    style: textStyles.regular12.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
