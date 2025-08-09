import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/products/cart/coupon_widget.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              const CartItems(showAddRemoveButton: false),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Coupon TextField
              const CouponCode(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Billing Section
              RoundedContainer(
                showBorder: true,
                backgroundColor: dark ? AppColors.black : AppColors.white,
                padding: const EdgeInsets.all(AppSizes.md),
                child: const Column(
                  children: [
                    /// Pricing
                    BillingAmountSection(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    /// Payment Methods
                    BillingPaymentSection(),
                    SizedBox(height: AppSizes.spaceBtwSections),

                    /// Address
                    BillingAddressSection(),
                    SizedBox(height: AppSizes.spaceBtwSections),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: AppImages.successImage,
              title: 'Payment Success!',
              subtitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
