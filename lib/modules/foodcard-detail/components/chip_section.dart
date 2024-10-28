import 'package:booque_users/core/utils/colorstyles.dart';
import 'package:booque_users/core/utils/textstyles.dart';
import 'package:booque_users/modules/foodcard-detail/bloc/food_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChipSection extends StatelessWidget {
  String title = "";
  List<Widget> widget;

  ChipSection({super.key, required this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FoodDetailBloc, FoodDetailInitial>(
      listener: (context, state) {},
      builder: (context, foodDetailState) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textStyles.semibold18,
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            direction: Axis.horizontal,
            children: widget,
          ),
        ],
      ),
    );
  }
}
