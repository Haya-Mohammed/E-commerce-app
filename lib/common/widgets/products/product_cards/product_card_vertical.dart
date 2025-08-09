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

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: isDark ? AppColors.darkerGrey : AppColors.white,
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkGrey.withOpacity(0.1),
              blurRadius: 50,
              spreadRadius: 7,
              offset: const Offset(3, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            /// Thumbnail
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: isDark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Image
                  const RoundedImage(
                    imageUrl: AppImages.productImage1,
                    applyImageRadius: true,
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
            const SizedBox(height: AppSizes.spaceBtwItems / 2),

            /// Details
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProductTitleText(
                      title: 'Green Nike Half Shirt',
                      smallSize: true,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems / 2),
                    const BrandTitleWithVerificationIcon(brandTitle: 'Nike'),
                    // Todo:  Add Spacer
                    // const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Price
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: AppSizes.sm),
                            child: ProductPriceText(price: '35.99'),
                          ),
                        ),

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
                            width: AppSizes.iconLg * 1.5,
                            height: AppSizes.iconLg * 1.5,
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
