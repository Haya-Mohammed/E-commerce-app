import 'package:flutter/material.dart';
import 'package:t_store/common/styles/spacing_style.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSpacingStyle.paddingWithAppbarHeight * 2,
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
              width: AppHelperFunctions.screenWidth() * 0.6,
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
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                child: const Text('Continue'),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
