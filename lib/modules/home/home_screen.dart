import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/navigator.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:booque_users/core/widgets/appbar.dart';
import 'package:booque_users/modules/home/home_bloc/home_bloc.dart';
import 'package:booque_users/modules/home/widget/carousel.dart';
import 'package:booque_users/modules/home/widget/gridview_foodcard.dart';
import 'package:booque_users/modules/home/widget/listview_filter.dart';
import 'package:booque_users/modules/home/widget/scan_bar.dart';
import 'package:booque_users/modules/review-and-orders/reviews_and_orders_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocConsumer<HomeBloc, HomeInitial>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: appBarBooque(context,
                isSearch: state.isSearch,
                title: "Warung Stradivarius",
                actions: [
                  GestureDetector(
                    onTap: () => context
                        .read<HomeBloc>()
                        .add(ChangeTitletoSearch(isSearch: state.isSearch)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                  ),
                ]),
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ListView(
                  children: const [
                    ScanBar(),
                    Carousel(),
                    ListViewFilter(),
                    GridviewFoodcard(),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: () => navigatorBooque.pushRight(
                        context, const ReviewsAndOrdersScreen()),
                    child: Card(
                        child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                          color: colorStyles.orange,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: FittedBox(
                              alignment: Alignment.centerLeft,
                              fit: BoxFit.scaleDown,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "1 Item",
                                    style: textStyles.semibold12
                                        .copyWith(color: Colors.white),
                                  ),
                                  Text(
                                    "Dalam Keranjang",
                                    style: textStyles.regular12
                                        .copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerRight,
                              child: Row(
                                children: [
                                  Text(
                                    "Rp 25.000",
                                    style: textStyles.regular12
                                        .copyWith(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(
                                    Icons.shopping_bag,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
