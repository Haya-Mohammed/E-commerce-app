import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            // Todo: edit the right theme
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(text: '5', value: 5.0),
              RatingProgressIndicator(text: '4', value: 4.0),
              RatingProgressIndicator(text: '3', value: 3.0),
              RatingProgressIndicator(text: '2', value: 2.0),
              RatingProgressIndicator(text: '1', value: 1.0),
            ],
          ),
        ),
      ],
    );
  }
}
