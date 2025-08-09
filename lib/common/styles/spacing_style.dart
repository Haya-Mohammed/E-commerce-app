import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    left: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
  );
}
