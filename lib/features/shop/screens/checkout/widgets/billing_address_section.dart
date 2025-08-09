import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Coding with T', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('+92-317-8059525',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              'South Liana, Maine 87654, USA',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        ),
      ],
    );
  }
}
