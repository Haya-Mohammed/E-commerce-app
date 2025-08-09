import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
              isDark ? AppImages.lightAppLogo : AppImages.darkAppLogo),
          height: 150,
        ),
        Text(
          'Welcome back,',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: AppSizes.sm),
        Text(
          'Discover Limitless Choices and Unmatched Convenience.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
