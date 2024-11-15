import 'package:flutter/material.dart';

class MatrixDecoration {
  final Color? foregroundColor;
  final Color? backgroundColor;
  final IconData? icon;
  final Color? iconActiveColor;
  final Color? iconInactiveColor;

  final BoxDecoration? foregroundDecoration;
  final BoxDecoration? backgroundDecoration;
  final double iconSize;

  MatrixDecoration({
    this.foregroundColor = Colors.green,
    this.backgroundColor = Colors.grey,
    this.icon = Icons.star,
    this.iconActiveColor = Colors.amber,
    this.iconInactiveColor = Colors.grey,
    this.foregroundDecoration = const BoxDecoration(),
    this.backgroundDecoration = const BoxDecoration(),
    this.iconSize = 16,
  })  : assert(foregroundColor != null || foregroundDecoration != null,
            'Either foregroundColor or foregroundDecoration must be provided'),
        assert(backgroundColor != null || backgroundDecoration != null,
            'Either backgroundColor or backgroundDecoration must be provided');
}
