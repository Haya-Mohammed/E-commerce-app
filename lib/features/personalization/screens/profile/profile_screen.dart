import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text('Profile'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              Column(
                children: [
                  const CircularImage(
                    image: AppImages.profileImage1,
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Change Profile Picture'),
                  ),
                ],
              ),

              /// Details
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Heading Profile Info
              const SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              ProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Coding with T',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'coding_with_t',
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Heading Personal Info
              const SectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              ProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '45689',
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'E-mail',
                value: 'codingwitht@gmail.com',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '+92-317-8059528',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '10 Oct, 1994',
              ),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
