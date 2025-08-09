import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_with_verification_icon.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///  Price & Sale Price
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Sale Tag
            RoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.sm,
                vertical: AppSizes.xs,
              ),
              child: Text(
                '14%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.black),
              ),
            ),

            /// Price
            const ProductPriceText(price: '165', isLarge: true),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        /// Title
        const ProductTitleText(title: 'Green Nike Sports Shirts'),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            CircularImage(
              image: AppImages.facebook,
              width: 32,
              height: 32,
              //Todo: Replace backgroundColor with OverlayColor
              backgroundColor: dark ? AppColors.white : AppColors.black,
            ),
            const BrandTitleWithVerificationIcon(
              brandTitle: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
