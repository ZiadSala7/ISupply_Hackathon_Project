import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';

import '../../../data/models/buttons/button_model.dart';

class CustomButton extends StatelessWidget {
  final ButtonModel model;
  const CustomButton({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: model.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: model.buttonColor,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
      ),
      child: Text(
        model.buttonText,
        style: AppTextStyles.textStyle20.copyWith(color: model.textColor),
      ),
    );
  }
}
