import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircularImage(
            image: AppImages.profileImage1,
            width: 50,
            height: 50,
            padding: 0,
          ),
          title: Text(
            'Coding with T',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: AppColors.white),
          ),
          subtitle: Text(
            'support@codingwithT.com',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.white),
          ),
          trailing: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Iconsax.edit,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
