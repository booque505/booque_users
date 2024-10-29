import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:booque_users/modules/foodcard-detail/bloc/food_detail_bloc.dart';
import 'package:booque_users/modules/foodcard-detail/components/add_item.dart';
import 'package:booque_users/modules/foodcard-detail/components/amount_button.dart';
import 'package:booque_users/modules/foodcard-detail/components/category_chip.dart';
import 'package:booque_users/modules/foodcard-detail/components/chip_section.dart';
import 'package:booque_users/modules/foodcard-detail/components/description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodcardDetailScreen extends StatelessWidget {
  FoodcardDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FoodDetailBloc(),
      child: BlocConsumer<FoodDetailBloc, FoodDetailInitial>(
        listener: (context, state) {},
        builder: (context, foodDetailState) => Scaffold(
          body: ListView(
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(50)),
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Image.asset(
                      "assets/placeholder/card_placeholder.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, top: 15),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: colorStyles.orange),
                    child: const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Description(),
                    const SizedBox(
                      height: 30,
                    ),
                    ChipSection(title: "Level Pedas", widget: [
                      for (String items in foodDetailState.levelList)
                        CategoryChip(
                          items: items,
                          selected: items == foodDetailState.chosenLevel,
                          onSelected: (p0) {
                            context
                                .read<FoodDetailBloc>()
                                .add(LevelEvent(chosenLevel: items));
                          },
                        )
                    ]),
                    const SizedBox(
                      height: 30,
                    ),
                    ChipSection(title: "Porsi", widget: [
                      for (String items in foodDetailState.portionList)
                        CategoryChip(
                          items: items,
                          selected: items == foodDetailState.chosenPortion,
                          onSelected: (p0) {
                            context
                                .read<FoodDetailBloc>()
                                .add(PortionEvent(chosenPortion: items));
                          },
                        )
                    ]),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  children: [
                    Expanded(
                        child: AmountButton(
                      amount: 0,
                    )),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(child: AddItem())
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
