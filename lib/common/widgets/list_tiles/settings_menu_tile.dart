import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class SettingsMenuTile extends StatelessWidget {
  const SettingsMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onPressed,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ListTile(
        leading: Icon(icon, size: 28, color: AppColors.primary),
        title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        subtitle:
            Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
        trailing: trailing,
      ),
    );
  }
}
