import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:booque_users/modules/foodcard-detail/bloc/food_detail_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AmountButton extends StatelessWidget {
  int amount = 0;
  AmountButton({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FoodDetailBloc, FoodDetailInitial>(
      listener: (context, state) {},
      builder: (context, foodDetailBloc) => FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                context
                    .read<FoodDetailBloc>()
                    .add(SubtractAmountEvent(amount: foodDetailBloc.amount));
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: colorStyles.orange,
                    borderRadius: BorderRadius.circular(15)),
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                foodDetailBloc.amount.toString(),
                style: textStyles.regular12,
              ),
            ),
            GestureDetector(
              onTap: () {
                context
                    .read<FoodDetailBloc>()
                    .add(AddAmountEvent(amount: foodDetailBloc.amount));
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: colorStyles.orange,
                    borderRadius: BorderRadius.circular(15)),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
