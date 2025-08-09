import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Material(
      color: isDark ? AppColors.black : AppColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
        labelColor: isDark ? AppColors.white : AppColors.primary,
      ),
    );
  }
}
