import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isupply_hackathon_project/features/home/data/models/cubit/order_model.dart';
import '../../../../../core/firebase/local_notifications_services.dart';
import 'order_states.dart';

class OrderCubit extends Cubit<OrderStates> {
  OrderCubit() : super(InitialState());
  String currentState = 'Initial';
  Color clr = Colors.black;
  // on button pressed
  Future orderStatusUpdate(String newState, OrderModel model) async {
    if (currentState == newState) return;
    clr = model.color;
    RemoteMessage message = RemoteMessage(
      notification: RemoteNotification(title: currentState, body: newState),
    );
    await LocalNotificationsServices.showBasicNotification(message);
    currentState = newState;
    emit(model.state);
  }
}
