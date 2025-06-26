import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../presentation/managers/cubit/order_states.dart';

class OrderModel {
  final Color color;
  final OrderStates state;

  OrderModel({required this.color, required this.state});
}

List<OrderModel> cubitModels = [
  OrderModel(color: AppColors.greyButton, state: PendingState()),
  OrderModel(color: AppColors.greenButton, state: ConfirmedState()),
  OrderModel(color: AppColors.blueButton, state: ShippedState()),
  OrderModel(color: AppColors.orangButton, state: DeliveredState()),
];
