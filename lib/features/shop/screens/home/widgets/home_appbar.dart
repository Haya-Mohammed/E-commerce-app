import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/products/cart/cart_counter_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good day for shopping',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.grey),
          ),
          Text(
            'Taimoor Sikandar',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: Colors.white),
          ),
        ],
      ),
      actions: const [
        CartCounterIcon(),
      ],
    );
  }
}
