import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.backgroundColor = AppColors.white,
  });

  final Widget? child;
  final double? width;
  final double? height;
  final double padding;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
