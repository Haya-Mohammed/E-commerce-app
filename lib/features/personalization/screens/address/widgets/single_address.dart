import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, this.selectedAddress = false});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      backgroundColor: selectedAddress
          ? Colors.transparent
          : dark
              ? AppColors.darkerGrey
              : AppColors.grey,
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? AppColors.light
                      : AppColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              const Text(
                '(+123) 456 7890',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              const Text(
                '83256 Timmy Coves, South Liana, Maine< 89665, USA',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
