import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: isAgreed,
            onChanged: (value) {
              setState(() {
                isAgreed = value!;
              });
            },
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'I agree to ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDark ? AppColors.white : AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            isDark ? AppColors.white : AppColors.primary,
                      ),
                ),
                TextSpan(
                  text: ' and ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: 'Terms of use',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDark ? AppColors.white : AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            isDark ? AppColors.white : AppColors.primary,
                      ),
                ),
                TextSpan(
                  text: '.',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
