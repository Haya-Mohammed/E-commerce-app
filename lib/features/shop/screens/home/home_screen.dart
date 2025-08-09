import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_header.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeHeader(),
            Container(
              margin: const EdgeInsets.only(top: 380),
              width: double.infinity,
              height: 800,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.defaultSpace),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const PromoSlider(
                      banners: [
                        AppImages.promoBanner1,
                        AppImages.promoBanner2,
                        AppImages.promoBanner3,
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),
                    SectionHeading(
                      title: 'Popular Categories',
                      onPressed: () {},
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    Expanded(
                      child: GridLayout(
                        itemCount: 6,
                        itemBuilder: (context, index) =>
                            const ProductCardVertical(),
                      ),
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
