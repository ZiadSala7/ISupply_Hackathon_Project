import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isupply_hackathon_project/core/utils/app_colors.dart';
import 'package:isupply_hackathon_project/features/home/presentation/managers/cubit/order_cubit.dart';

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
      onPressed: () {
        BlocProvider.of<OrderCubit>(context).onPendingPressed();
      },
    ),
    ButtonModel(
      buttonColor: AppColors.greenButton,
      textColor: AppColors.white,
      buttonText: 'Confirmed',
      onPressed: () {
        BlocProvider.of<OrderCubit>(context).onConfirmedPressed();
      },
    ),
    ButtonModel(
      buttonColor: AppColors.blueButton,
      textColor: AppColors.white,
      buttonText: 'Shipped',
      onPressed: () {
        BlocProvider.of<OrderCubit>(context).onShippedPressed();
      },
    ),
    ButtonModel(
      buttonColor: AppColors.orangButton,
      textColor: AppColors.black,
      buttonText: 'Delivered',
      onPressed: () {
        BlocProvider.of<OrderCubit>(context).onDeliveredPressed();
      },
    ),
  ];
}
