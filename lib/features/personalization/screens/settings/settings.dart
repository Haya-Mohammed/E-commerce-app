import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:t_store/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/address/address_screen.dart';
import 'package:t_store/features/personalization/screens/profile/profile_screen.dart';
import 'package:t_store/features/shop/screens/cart/cart_screen.dart';
import 'package:t_store/features/shop/screens/order/order.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  CustomAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Colors.white),
                    ),
                  ),

                  /// User Profile Card
                  UserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Settings
                  const SectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery address',
                    onPressed: () => Get.to(() => const UserAddressScreen()),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    onPressed: () => Get.to(() => const CartScreen()),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders',
                    onPressed: () => Get.to(() => const OrderScreen()),
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted coupons',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message',
                  ),
                  const SettingsMenuTile(
                    icon: Iconsax.security,
                    title: 'Account Privacy',
                    subtitle: 'Manage date usage and connected accounts',
                  ),

                  /// App Settings
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const SectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload Data to your Cloud Firebase',
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
