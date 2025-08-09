import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = 'View all',
    this.titleColor,
    this.onPressed,
    this.showActionButton = true,
  });

  final String title, buttonTitle;
  final Color? titleColor;
  final void Function()? onPressed;
  final bool showActionButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: titleColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(buttonTitle),
          ),
      ],
    );
  }
}
