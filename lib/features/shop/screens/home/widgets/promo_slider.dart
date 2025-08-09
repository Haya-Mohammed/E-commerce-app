import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/features/shop/controllers/home_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              viewportFraction: 1,
              scrollPhysics: const AlwaysScrollableScrollPhysics(),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              enableInfiniteScroll: true,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            ),
            items: banners
                .map(
                  (url) => RoundedImage(
                    imageUrl: url,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                )
                .toList(),
          ),
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Container(
                    width: 20,
                    height: 4,
                    decoration: BoxDecoration(
                      color: controller.carouselCurrentIndex.value == i
                          ? AppColors.primary
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
