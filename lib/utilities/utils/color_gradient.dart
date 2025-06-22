import 'package:flutter/material.dart';
import '../../gen/colors.gen.dart';

/// Extension to add gradient definitions using generated colors
extension ColorNameGradients on ColorName {
  /// Login button gradient: #6840FF to #6EE7B7 (left to right)
  static const LinearGradient loginGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorName.loginGradientStart, // #6840FF
      ColorName.loginGradientEnd,   // #6EE7B7
    ],
  );

  /// Other gradient variations using your new colors
  static const LinearGradient loginGradientVertical = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ColorName.loginGradientStart,
      ColorName.loginGradientEnd,
    ],
  );

  static const LinearGradient loginGradientDiagonal = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      ColorName.loginGradientStart,
      ColorName.loginGradientEnd,
    ],
  );
}