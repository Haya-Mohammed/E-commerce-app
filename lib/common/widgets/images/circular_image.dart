import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.image,
    this.width = 56,
    this.height = 56,
    this.backgroundColor,
    this.imageColor,
    this.padding = AppSizes.sm,
    this.fit = BoxFit.cover,
    this.isNetworkColor = false,
  });

  final double? width, height;
  final double padding;
  final String image;
  final Color? backgroundColor;
  final Color? imageColor;
  final BoxFit? fit;
  final bool isNetworkColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (AppHelperFunctions.isDarkMode(context)
                ? AppColors.dark
                : AppColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetworkColor
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: imageColor ??
            (AppHelperFunctions.isDarkMode(context)
                ? AppColors.white
                : AppColors.black),
      ),
    );
  }
}
