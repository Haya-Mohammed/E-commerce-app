import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/products/cart/add_remove_buttons.dart';
import 'package:t_store/common/widgets/products/cart/cart_item.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) => Column(
        children: [
          /// Cart Item
          const CartItem(),
          if (showAddRemoveButton)
            const SizedBox(height: AppSizes.spaceBtwItems),

          /// AddRemoveButtons with Price
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    AddRemoveButtons(),
                  ],
                ),
                ProductPriceText(price: '256'),
              ],
            ),
        ],
      ),
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: AppSizes.spaceBtwSections),
    );
  }
}
