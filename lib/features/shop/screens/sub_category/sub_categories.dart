import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const RoundedImage(
                imageUrl: AppImages.promoBanner3,
                applyImageRadius: true,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Sub-Categories
              ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => Column(
                  children: [
                    /// Heading
                    SectionHeading(
                      title: 'Sport Equipments',
                      onPressed: () {},
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems / 2),

                    /// Products
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: AppSizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            const ProductCardHorizontal(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
