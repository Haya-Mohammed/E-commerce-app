import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let\'s create your account',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const SignUpForm(),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const FormDivider(dividerText: 'Or Sign up with'),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
