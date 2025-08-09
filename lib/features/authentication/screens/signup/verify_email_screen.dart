import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/authentication/screens/login/login_screen.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => const LoginScreen());
            },
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                // -- Todo: Add A Verify Email Image
                image: const AssetImage(AppImages.OnBoardingImage3),
                width: AppHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                'Verify your Email Address!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                'test@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                'Congratulation! your account available. Verify your Email to start shopping and experience a word of ....',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                        image: AppImages.successImage,
                        title: 'Your account successfully created!',
                        // TODO: add a text
                        subtitle: 'nkcsncvjndsjcnklsndvjbdbuhvbgksnvoinsio',
                        onPressed: () => Get.to(() => const LoginScreen()),
                      )),
                  child: const Text('Continue'),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
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
