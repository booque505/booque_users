import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:booque_users/core/widgets/appbar.dart';
import 'package:booque_users/core/widgets/main_button.dart';
import 'package:booque_users/modules/review-and-orders/rev-and-orders-bloc/rev_and_bloc_bloc.dart';
import 'package:booque_users/modules/review-and-orders/widget/bottom_sheet_order.dart';
import 'package:booque_users/modules/review-and-orders/widget/order_card.dart';
import 'package:booque_users/modules/review-and-orders/widget/review_user_info.dart';
import 'package:booque_users/modules/review-and-orders/widget/table_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReviewsAndOrdersScreen extends StatelessWidget {
  const ReviewsAndOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RevAndBlocBloc(),
      child: BlocConsumer<RevAndBlocBloc,RevAndBlocInitial>(
        listener: (context, state) {
          
        },
        builder: (context, state) =>  Scaffold(
          appBar: appBarBooque(context,
              isSearch: false,
              title: "Warung Stradivarius",
              actions: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search),
                ),
              ]),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Reviews & Orders",
                    style: textStyles.semibold18,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TableInfo(),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReviewUserInfo(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Your Order",
                    style: textStyles.semibold18,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListView.separated(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: state.items.length,
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                      itemBuilder: (context, index) => OrderCard(
                            index: index,
                          )),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return const BottomsheetOrder();
                              });
                        },
                        child: booqueButton("Pesan Sekarang")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
