import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CategoriesListItem extends StatelessWidget {
  const CategoriesListItem({
    super.key,
    this.backgroundColor,
    this.titleColor = AppColors.white,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final Color? backgroundColor;
  final Color? titleColor;
  final String icon;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: backgroundColor ??
                    (isDark ? AppColors.black : AppColors.white),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(icon),
                  fit: BoxFit.cover,
                  color: isDark ? AppColors.light : AppColors.dark,
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: titleColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
