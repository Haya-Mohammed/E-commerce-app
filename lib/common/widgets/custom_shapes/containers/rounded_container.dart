import 'package:flutter/cupertino.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.backgroundColor = AppColors.white,
    this.radius = AppSizes.cardRadiusLg,
    this.borderColor = AppColors.borderPrimary,
    this.showBorder = false,
    this.child,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color backgroundColor;
  final Color borderColor;
  final double radius;
  final bool showBorder;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
