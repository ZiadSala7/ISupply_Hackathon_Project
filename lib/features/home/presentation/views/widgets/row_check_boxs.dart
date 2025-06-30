import 'package:flutter/material.dart';
import '../../../../../core/utils/app_strings.dart';

import '../../managers/cubit/order_cubit.dart';
import 'custom_check_box.dart';

class RowCheckBoxs extends StatelessWidget {
  const RowCheckBoxs({super.key, required this.cubit});

  final OrderCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCheckBox(cubit: cubit, compare: 1, text: AppStrings.pending),
          CustomCheckBox(cubit: cubit, compare: 2, text: AppStrings.confirmed),
          CustomCheckBox(cubit: cubit, compare: 3, text: AppStrings.shipped),
          CustomCheckBox(cubit: cubit, compare: 4, text: AppStrings.delivered),
        ],
      ),
    );
  }
}
