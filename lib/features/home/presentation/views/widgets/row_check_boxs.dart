import 'package:flutter/material.dart';

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
          CustomCheckBox(cubit: cubit, compare: 1, text: 'Pending'),
          CustomCheckBox(cubit: cubit, compare: 2, text: 'Confirmed'),
          CustomCheckBox(cubit: cubit, compare: 3, text: 'Shipped'),
          CustomCheckBox(cubit: cubit, compare: 4, text: 'Delivered'),
        ],
      ),
    );
  }
}
