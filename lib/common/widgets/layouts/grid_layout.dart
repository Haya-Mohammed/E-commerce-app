import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.itemCount,
    // ToDo: find another solution (without mainAxisExtent)
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: AppSizes.gridViewSpacing,
        mainAxisSpacing: AppSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
        // childAspectRatio: 1 / 2,
      ),
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      // controller: ScrollController(),
      itemBuilder: itemBuilder,
    );
  }
}
