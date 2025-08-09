import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      padding: const EdgeInsets.all(AppSizes.md),
      backgroundColor: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BrandCard(showBorder: false),
          Row(
            children: images
                .map(
                  (image) => brandTopProductImage(image, context),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImage(String image, BuildContext context) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: AppHelperFunctions.isDarkMode(context)
            ? AppColors.darkerGrey
            : AppColors.light,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        padding: const EdgeInsets.all(AppSizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
