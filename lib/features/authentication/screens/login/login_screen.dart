import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppSizes.appBarHeight,
            bottom: AppSizes.kBottomNavigationBarHeight,
            left: AppSizes.defaultSpace,
            right: AppSizes.defaultSpace,
          ),
          child: Column(
            children: [
              const LoginHeader(),
              LoginForm(),
              const FormDivider(dividerText: 'Or Sign in With'),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
