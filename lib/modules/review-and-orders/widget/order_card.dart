import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:booque_users/modules/review-and-orders/rev-and-orders-bloc/rev_and_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCard extends StatelessWidget {
  int index = 0;
  OrderCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RevAndBlocBloc, RevAndBlocInitial>(
      listener: (context, state) {},
      builder: (context, state) => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                          "assets/placeholder/card_placeholder.png")),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tahu Petis",
                        style: textStyles.semibold12,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Rp 25.000",
                        style: textStyles.regular12,
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context
                          .read<RevAndBlocBloc>()
                          .add(SubtractItem(item: state.items, index: index));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: colorStyles.orange,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    state.items[index].toString(),
                    style: textStyles.regular16
                        .copyWith(color: colorStyles.orange),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context
                          .read<RevAndBlocBloc>()
                          .add(AddItem(item: state.items, index: index));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: colorStyles.orange,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
