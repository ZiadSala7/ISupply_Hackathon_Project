import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isupply_hackathon_project/constants.dart';
import '../../../data/models/cubit/order_model.dart';
import '../../../../../core/services/firebase/local_notifications_services.dart';
import 'order_states.dart';

class OrderCubit extends Cubit<OrderStates> {
  OrderCubit() : super(InitialState());
  String currentState = 'Initial';
  int stateNum = 0;
  Color clr = Colors.black;

  // on button pressed
  Future orderStatusUpdate(String newState, OrderModel model) async {
    // to not to send message if we in this state now
    if (currentState == newState) return;
    clr = model.color;
    RemoteMessage message = RemoteMessage(
      notification: RemoteNotification(
        title: "Order Status Update",
        body: "Your order changed from $currentState to $newState",
      ),
    );
    await LocalNotificationsServices.showBasicNotification(message);
    currentState = newState;
    // stateNum for changing the checkBox in homeView
    stateNum = AppConstants.states[newState] ?? 0;
    emit(model.state);
  }
}
