import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:booque_users/core/widgets/main_button.dart';
import 'package:flutter/material.dart';

class PaymentDetailScreen extends StatelessWidget {
  const PaymentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.width / 2,
                  child: Image.asset("assets/placeholder/paid_sign.png")),
              Text(
                "Total",
                style: textStyles.regular12,
              ),
              Text(
                "Rp 102.500",
                style: textStyles.semibold12,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      child: Image.asset("assets/icon/gopay_horiz.png")),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Rp 102.500",
                    style: textStyles.semibold12,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        "Pesanan",
                        style: textStyles.regular16,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListView.separated(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: 3,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 15,
                        ),
                        itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${index + 1}. Tahu Petis",
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1 x Rp 25.000",
                                    style: textStyles.semibold12,
                                  ),
                                  Text(
                                    "Rp 25.000",
                                    style: textStyles.semibold12,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        height: 50,
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
                            style: textStyles.semibold12,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.download,
                            color: colorStyles.orange,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Unduh Nota",
                            style: textStyles.regular16
                                .copyWith(color: colorStyles.orange),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Nomor Pesanan",
                style: textStyles.semibold18,
              ),
              Text(
                "#0001",
                style: textStyles.semibold12,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Password Wifi: dibawah meja",
                style: textStyles.regular12,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "TERIMA KASIH SUDAH MEMESAN! Have a nice day!",
                style: textStyles.semibold12,
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: booqueButton("Selesai")),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
