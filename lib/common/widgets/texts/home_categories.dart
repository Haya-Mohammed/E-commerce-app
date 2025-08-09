import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/categoriesListItem.dart';
import 'package:t_store/features/shop/screens/sub_category/sub_categories.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => CategoriesListItem(
          title: 'Jewelry',
          // -- Todo: Add a category image
          icon: AppImages.lightAppLogo,
          onTap: () => Get.to(() => const SubCategoriesScreen()),
        ),
      ),
    );
  }
}
