import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  final String imageUrl, title, subtitle;

  const OnBoardingPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          width: AppHelperFunctions.screenWidth() * 0.8,
          height: AppHelperFunctions.screenWidth() * 0.6,
          image: AssetImage(imageUrl),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
