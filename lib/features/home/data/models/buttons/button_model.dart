// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/order_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../presentation/managers/cubit/order_cubit.dart';

class ButtonModel {
  final Color buttonColor, textColor;
  final String buttonText;
  final Function() onPressed;

  ButtonModel({
    required this.buttonColor,
    required this.textColor,
    required this.buttonText,
    required this.onPressed,
  });
}

List<ButtonModel> buildButtons(BuildContext context) {
  return [
    ButtonModel(
      buttonColor: AppColors.greyButton,
      textColor: AppColors.black,
      buttonText: 'Pending',
      onPressed: () async {
        await BlocProvider.of<OrderCubit>(
          context,
        ).orderStatusUpdate('Pending', cubitModels[0]);
      },
    ),
    ButtonModel(
      buttonColor: AppColors.greenButton,
      textColor: AppColors.white,
      buttonText: 'Confirmed',
      onPressed: () async {
        await BlocProvider.of<OrderCubit>(
          context,
        ).orderStatusUpdate('Confirmed', cubitModels[1]);
      },
    ),
    ButtonModel(
      buttonColor: AppColors.blueButton,
      textColor: AppColors.white,
      buttonText: 'Shipped',
      onPressed: () async {
        await BlocProvider.of<OrderCubit>(
          context,
        ).orderStatusUpdate('Shipped', cubitModels[2]);
      },
    ),
    ButtonModel(
      buttonColor: AppColors.orangButton,
      textColor: AppColors.black,
      buttonText: 'Delivered',
      onPressed: () async {
        await BlocProvider.of<OrderCubit>(
          context,
        ).orderStatusUpdate('Delivered', cubitModels[3]);
      },
    ),
  ];
}
