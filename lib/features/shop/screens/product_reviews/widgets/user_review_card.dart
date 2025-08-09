import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AppImages.profileImage1),
                ),
                const SizedBox(width: AppSizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        /// Reviews
        Row(
          children: [
            const CustomRatingBarIndicator(rating: 4),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        /// User Review
        const ReadMoreText(
          'This is a user review. There are more things that can be added but I am just practicing nothing else.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'show more',
          trimExpandedText: 'show less',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.primary),
          lessStyle: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold,
            //     color: AppColors.primary),
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        /// Company Review
        RoundedContainer(
          backgroundColor: isDark ? AppColors.darkerGrey : AppColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "T's Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "02 Nov, 2023",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const ReadMoreText(
                  'This is a user review. There are more things that can be added but I am just practicing nothing else.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'show more',
                  trimExpandedText: 'show less',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary),
                  lessStyle: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold,
                    //     color: AppColors.primary),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: AppSizes.spaceBtwSections),
      ],
    );
  }
}
