import 'package:flutter/material.dart';
import 'package:two_d_rating/src/extensions/extensions.dart';
import 'package:two_d_rating/src/models/matrix.decoration.dart';

import 'ratings.dart';

class RatingMatrix extends StatelessWidget {
  RatingMatrix({
    super.key,
    required this.ratingRates,
    this.decoration,
  }) : assert(ratingRates.every((v) => v <= 1),
            'Rating rates should be between 0 and 1');
  final bool showRawRating = false;
  final MatrixDecoration? decoration;
  final List<double> ratingRates;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        ratingRates.length,
        (index) => DetailTile(
          index: ratingRates.length - index,
          percentage: ratingRates[index],
          showRawRating: false,
        ),
      ).toList(),
    );
  }
}

class DetailTile extends StatelessWidget {
  const DetailTile({
    super.key,
    required this.index,
    required this.percentage,
    this.showRawRating,
    this.decoration,
  });
  final int index;
  final double percentage;
  final bool? showRawRating;
  final MatrixDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Ratings(
          rating: index,
          decoration: decoration ?? MatrixDecoration(),
        ),
        6.toWidth,
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 3,
              ),
              FractionallySizedBox(
                widthFactor: percentage,
                child: Container(
                  decoration: BoxDecoration(
                    color: context.theme.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 3,
                ),
              ),
            ],
          ),
        ),
        if (showRawRating!) ...[
          10.toWidth,
          Text((percentage * 100).round().toString()),
        ]
      ],
    );
  }

  List<int> fromoPercentagesToRatings(List<double> ratingPercentage) {
    if (ratingPercentage.isEmpty) {
      return [];
    }
    return ratingPercentage
        .map((double percentage) => (percentage * 100).round())
        .toList();
  }
}
