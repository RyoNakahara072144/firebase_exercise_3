import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyles{

  static const TextStyle title = TextStyle(
      color: AppColors.whiteTextColor,
      fontSize: 20,
      fontWeight: FontWeight.bold
  );

  static const TextStyle body = TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
  );

  static const TextStyle headline = TextStyle(
    color: AppColors.textColor,
    fontSize: 30,
  );
}