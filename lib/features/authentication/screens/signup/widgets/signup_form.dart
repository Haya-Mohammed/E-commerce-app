import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _userNameController.dispose();
    _emailController.dispose();
    _phoneNoController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  controller: _firstNameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: _lastNameController,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            controller: _userNameController,
            decoration: const InputDecoration(
              labelText: 'User name',
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'E-Mail',
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            controller: _phoneNoController,
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          const TermsAndConditions(),
          const SizedBox(height: AppSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text('Create Account')),
          ),
        ],
      ),
    );
  }
}
