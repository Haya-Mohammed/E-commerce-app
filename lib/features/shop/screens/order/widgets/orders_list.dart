import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) => RoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(AppSizes.md),
        backgroundColor: dark ? AppColors.dark : AppColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row 1
            Row(
              children: [
                /// Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: AppSizes.spaceBtwItems / 2),

                /// Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Order Status
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: AppColors.primary, fontWeightDelta: 1),
                      ),

                      /// Order Date
                      Text(
                        '09 Apr 2025',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),

                /// IconButton
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.arrow_right_34,
                    size: AppSizes.iconSm,
                  ),
                ),
              ],
            ),

            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: AppSizes.spaceBtwItems / 2),

                      /// Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '[#256f2]',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: AppSizes.spaceBtwItems / 2),

                      /// Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '12 Apr 2025',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
