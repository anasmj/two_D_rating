import 'package:flutter/material.dart';
import 'package:two_d_rating/src/models/matrix.decoration.dart';

class Ratings extends StatelessWidget {
  const Ratings({
    super.key,
    required this.rating,
    this.total = 5,
    this.decoration,
  }) : assert(rating >= 0 && rating <= 5);

  final int rating;
  final int? total;
  final MatrixDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: getStars);
  }

  List<Widget> get getStars {
    List<Widget> stars = [];
    for (var i = 0; i < total!; i++) {
      stars.add(Icon(
        size: decoration?.iconSize,
        decoration!.icon!,
        color: i < rating
            ? decoration!.iconActiveColor
            : decoration!.iconInactiveColor!,
      ));
    }
    return stars;
  }
}
