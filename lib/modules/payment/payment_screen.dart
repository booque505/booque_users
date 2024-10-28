import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/navigator.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:booque_users/core/widgets/appbar.dart';
import 'package:booque_users/modules/payment/payment_detail_screen.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});

  List<String> paymentMethod = [
    "Linkaja",
    "Dana",
    "Gopay",
    "Ovo",
    "ShopeePay",
    "Cash"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBooque(
        context,
        isSearch: false,
        title: "Pembayaran",
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pilih Penyedia Jasa",
              style: textStyles.semibold18,
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: paymentMethod.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => navigatorBooque.pushRight(
                    context, const PaymentDetailScreen()),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorStyles.lightGrey,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      paymentMethod[index],
                      style: textStyles.regular12,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
