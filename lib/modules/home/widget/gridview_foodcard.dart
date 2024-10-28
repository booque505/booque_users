import 'package:booque_users/core/utils/navigator.dart';
import 'package:booque_users/modules/foodcard-detail/foodcard_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/utils/colorstyles.dart';
import '../../../core/utils/textstyles.dart';

class GridviewFoodcard extends StatelessWidget {
  const GridviewFoodcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 6,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () =>
              navigatorBooque.pushRight(context, FoodcardDetailScreen()),
          child: Card(
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(15)),
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          "assets/placeholder/card_placeholder.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(
                            child: Text(
                              "Tahu Petis",
                              style: textStyles.semibold12,
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              "Rp 25.000",
                              style: textStyles.regular12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: colorStyles.orange,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12))),
                        child: FittedBox(
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
