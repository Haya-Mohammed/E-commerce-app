import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: dark ? AppColors.darkerGrey : AppColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(AppSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(AppImages.productImage5),
                  ),
                ),
              ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              left: AppSizes.defaultSpace,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: AppSizes.spaceBtwItems),
                  itemBuilder: (_, index) => RoundedImage(
                    width: 80,
                    backgroundColor: dark ? AppColors.dark : AppColors.white,
                    border: Border.all(color: AppColors.primary),
                    padding: const EdgeInsets.all(AppSizes.sm),
                    imageUrl: AppImages.productImage1,
                  ),
                ),
              ),
            ),

            /// Appbar Icon
            const CustomAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
