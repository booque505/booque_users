import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/navigator.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:booque_users/core/widgets/appbar.dart';
import 'package:booque_users/modules/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/main_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.55,
            child: Image.asset(
              "assets/placeholder/splash_placeholder.png",
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Container(),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              Expanded(flex: 4, child: Container()),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/placeholder/splash_placeholder.png")),
                      shape: BoxShape.circle,
                      color: Colors.white),
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Warung Stradivarius",
                            style: textStyles.regular16,
                          ),
                          Text(
                            "Inside, 02",
                            style: textStyles.semibold12,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Selamat Datang",
                            style: textStyles.headingBold20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            child: Text(
                              "Terima kasih telah mengunjungi kami, silakan lihat-lihat menu kami di tombol bawah ini",
                              textAlign: TextAlign.center,
                              style: textStyles.regular12,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: colorStyles.darkGrey,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Jl. Aja dulu No. 1 Kec. Nanti Kab",
                                          style: textStyles.regular12,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Buka Peta",
                                  style: textStyles.regular12
                                      .copyWith(color: Colors.redAccent),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: InkWell(
                                onTap: () {
                                  navigatorBooque.pushRight(
                                      context, HomeScreen());
                                },
                                child: booqueButton("Menu Kami")),
                          )
                        ],
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
