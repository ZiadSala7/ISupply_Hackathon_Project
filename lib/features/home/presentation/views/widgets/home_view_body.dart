import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/models/buttons/button_model.dart';
import '../../managers/cubit/order_cubit.dart';
import '../../managers/cubit/order_states.dart';

import 'buttons_list_view_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = buildButtons(context);
    return BlocConsumer<OrderCubit, OrderStates>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = BlocProvider.of<OrderCubit>(context);
        return SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              SizedBox(height: 150),
              Text(
                cubit.currentState,
                style: AppTextStyles.textStyle40.copyWith(color: cubit.clr),
              ),
              SizedBox(height: 150),
              ButtonsListViewBuilder(buttons: buttons),
            ],
          ),
        );
      },
    );
  }
}
