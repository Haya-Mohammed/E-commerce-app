import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/login/login_screen.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(AppImages.OnBoardingImage3),
                width: AppHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                'Password Reset Email Sent',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                'Your Account Security is Our Priority! We\'ve Sent you a Secure Link to Safely Change Your Password and Keep Your Account Protected.',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Done'),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => Get.off(() => const LoginScreen()),
                  child: const Text('Resend Email'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
