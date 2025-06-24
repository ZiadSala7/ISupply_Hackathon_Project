import 'package:flutter/material.dart';

import '../../../data/models/buttons/button_model.dart';
import 'custom_button.dart';

class ButtonsListViewBuilder extends StatelessWidget {
  const ButtonsListViewBuilder({super.key, required this.buttons});

  final List<ButtonModel> buttons;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView.builder(
          itemCount: buttons.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: CustomButton(model: buttons[index]),
          ),
        ),
      ),
    );
  }
}
