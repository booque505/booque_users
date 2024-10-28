import 'package:booque_users/modules/home/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/colorstyles.dart';
import '../../../core/utils/textstyles.dart';

class ListViewFilter extends StatelessWidget {
  const ListViewFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeInitial>(
      listener: (context, state) {},
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: colorStyles.orange)),
              child: Icon(
                Icons.filter_list,
                color: colorStyles.orange,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: state.chosenListFilter?.length ?? 1,
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemBuilder: (context, index) => FilterChip(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: colorStyles.orange)),
                          label: Text(
                            state.chosenListFilter?[index] ?? "",
                            style: textStyles.regular12
                                .copyWith(color: colorStyles.orange),
                          ),
                          selected: state.chosenListFilter?[index] ==
                              state.chosenFilter,
                          onSelected: (value) {
                            context.read<HomeBloc>().add(ChangeFilterChip(
                                chosenFilter: state.chosenListFilter?[index]));
                          },
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
//                   padding: const EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       border: Border.all(color: colorStyles.orange)),
//                   child: Text(
//                     "Makanan",
//                     style: textStyles.semibold12
//                         .copyWith(color: colorStyles.orange),
//                   ),
//                 ),