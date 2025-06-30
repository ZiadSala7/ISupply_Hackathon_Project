import 'package:flutter/material.dart';
import 'package:isupply_hackathon_project/core/utils/app_text_styles.dart';
import '../../../../../constants.dart';
import '../../managers/cubit/order_cubit.dart';

class CustomCheckBox extends StatelessWidget {
  final OrderCubit cubit;
  final int compare;
  final String text;

  const CustomCheckBox({
    super.key,
    required this.cubit,
    required this.compare,
    required this.text,
  });

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
        Text(
          text,
          style: AppTextStyles.textStyle18.copyWith(
            color: cubit.stateNum >= compare
                ? AppConstants.checkBoxClrs[compare]
                : Colors.black,
          ),
        ),
      ],
    );
  }
}
