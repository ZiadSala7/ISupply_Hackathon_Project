import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../managers/cubit/order_cubit.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.cubit,
    required this.compare,
    required this.text,
  });

  final OrderCubit cubit;
  final int compare;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          cubit.stateNum >= compare
              ? Icons.check_circle
              : Icons.circle_outlined,
          color: cubit.stateNum >= compare
              ? AppConstants.checkBoxClrs[compare]
              : null,
          size: 35,
        ),
        Text(text),
      ],
    );
  }
}
