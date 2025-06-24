import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isupply_hackathon_project/core/utils/app_colors.dart';
import 'package:isupply_hackathon_project/features/home/presentation/managers/cubit/order_states.dart';

class OrderCubit extends Cubit<OrderStates> {
  OrderCubit() : super(InitialState());
  String message = 'No states until now';
  Color clr = Colors.black;
  // on Pending button pressed
  onPendingPressed() {
    message = 'Pending';
    clr = AppColors.greyButton;
    emit(PendingState());
  }

  // on Confirmed button pressed
  onConfirmedPressed() {
    message = 'Confirmed';
    clr = AppColors.greenButton;
    emit(ConfirmedState());
  }

  // on Shipped button pressed
  onShippedPressed() {
    message = 'Shipped';
    clr = AppColors.blueButton;
    emit(ShippedState());
  }

  // on Delivered button pressed
  onDeliveredPressed() {
    message = 'Delivered';
    clr = AppColors.orangButton;
    emit(DeliveredState());
  }
}
