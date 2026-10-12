import 'package:flutter/material.dart';

class ForestColors {
  ForestColors._();

  //includes color scheme for the app
  static const deepForest = Color(0xFF173B2B);
  static const forest = Color(0xFF285A3D);
  static const leaf = Color(0xFF9ABF78);
  static const cream = Color(0xFFF3F2E8);
  static const forestGradientMiddle = Color(0xFF244C35);
  static const forestGradientEnd = Color(0xFF3E6746);
  static const mutedLeaf = Color(0xFFD6E2CE);
}

//styles the forest icon found on main page
class ForestDecoration extends StatelessWidget {
  const ForestDecoration({
    super.key,
    required this.size,
    required this.opacity,
  });

  final double size;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.forest_rounded,
      size: size,
      color: ForestColors.leaf.withValues(alpha: opacity),
    );
  }
}
