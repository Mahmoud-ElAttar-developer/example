import 'package:example/Core/Utiles/app_colors.dart';
import 'package:flutter/material.dart';


void showErrorText(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text, style: Theme.of(context).textTheme.displaySmall),
      backgroundColor: AppColors.greyColor,
    ),
  );
}
