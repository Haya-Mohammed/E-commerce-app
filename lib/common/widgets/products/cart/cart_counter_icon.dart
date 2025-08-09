import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/cart/cart_screen.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    this.onPressed,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
  });

  final VoidCallback? onPressed;
  final Color? iconColor, counterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed ?? () => Get.to(() => const CartScreen()),
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color:
                  counterBgColor ?? (dark ? AppColors.white : AppColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: counterTextColor ??
                        (dark ? AppColors.white : AppColors.black),
                    fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
