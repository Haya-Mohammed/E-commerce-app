import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/brand_showcase.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // --- Brands
              const BrandShowcase(
                images: [
                  AppImages.productImage1,
                  AppImages.productImage2,
                  AppImages.productImage3,
                ],
              ),
              const BrandShowcase(
                images: [
                  AppImages.productImage5,
                  AppImages.productImage4,
                  AppImages.productImage6,
                ],
              ),
              // --- Products
              SectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              GridLayout(
                itemCount: 4,
                itemBuilder: (context, index) => const ProductCardVertical(),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
