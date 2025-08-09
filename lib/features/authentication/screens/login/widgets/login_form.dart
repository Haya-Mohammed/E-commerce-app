import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/password_configration/forget_password_screen.dart';
import 'package:t_store/features/authentication/screens/signup/signup_screen.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/sizes.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'E-Mail',
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  children: [
                    Checkbox(
                      value: remember,
                      onChanged: (value) {
                        setState(() {
                          remember = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'remember me?',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => ForgetPasswordScreen()),
                  child: const Text('forget password?'),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => const NavigationMenu()),
                child: const Text('Sign In'),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: const Text('Create Account'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
