import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '5',
          style: Theme.of(context).textTheme.labelSmall,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        const LinearProgressIndicator(
          value: 4.5,
          backgroundColor: AppColors.grey,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
