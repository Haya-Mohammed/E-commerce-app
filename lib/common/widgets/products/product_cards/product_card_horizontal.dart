import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_with_verification_icon.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/features/shop/screens/product_details/product_details.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: isDark ? AppColors.darkerGrey : AppColors.softGrey,
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        ),
        child: Row(
          children: [
            /// Thumbnail
            RoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: isDark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Image
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: RoundedImage(
                      imageUrl: AppImages.productImage1,
                      applyImageRadius: true,
                    ),
                  ),

                  /// Sale Tag
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
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
                  ),

                  /// Favorite IconButton
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            /// Details
            SizedBox(
              width: 172,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: AppSizes.sm, top: AppSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductTitleText(
                          title: 'Green Nike Half Shirt',
                          smallSize: true,
                        ),
                        SizedBox(height: AppSizes.spaceBtwItems / 2),
                        BrandTitleWithVerificationIcon(brandTitle: 'Nike'),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Price
                        const Flexible(child: ProductPriceText(price: '35.99')),
                        const SizedBox(width: AppSizes.spaceBtwItems),

                        /// Add to cart Button
                        Container(
                          decoration: const BoxDecoration(
                            color: AppColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(AppSizes.productImageRadius),
                            ),
                          ),
                          child: const SizedBox(
                            width: AppSizes.iconLg * 1.2,
                            height: AppSizes.iconLg * 1.2,
                            child: Center(
                              child: Icon(
                                Iconsax.add,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
