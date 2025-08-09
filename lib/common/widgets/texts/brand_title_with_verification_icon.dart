import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/texts/brand_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BrandTitleWithVerificationIcon extends StatelessWidget {
  const BrandTitleWithVerificationIcon({
    super.key,
    required this.brandTitle,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String brandTitle;
  final Color? textColor, iconColor;
  final int maxLines;
  final TextAlign textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BrandTitleText(
            title: brandTitle,
            color: textColor,
            maxLines: maxLines,
            brandTextSize: brandTextSize,
            textAlign: textAlign,
          ),
        ),
        const SizedBox(width: AppSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: AppSizes.iconXs),
      ],
    );
  }
}
