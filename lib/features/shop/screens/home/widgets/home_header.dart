import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/texts/home_categories.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/all_products/all_products.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryHeaderContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeAppBar(),
          const SizedBox(height: AppSizes.spaceBtwItems),
          const SearchContainer(text: 'Search in Store'),
          const SizedBox(height: AppSizes.spaceBtwSections),
          Padding(
            padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionHeading(
                  title: 'Popular Categories',
                  showActionButton: false,
                  onPressed: () => Get.to(() => const AllProductScreen()),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const HomeCategories(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
