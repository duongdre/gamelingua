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

  /// Login gradient with smooth transition (using intermediate colors)
  static const LinearGradient loginGradientSmooth = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.0, 0.33, 0.66, 1.0],
    colors: [
      ColorName.loginGradientStart, // #6840FF
      ColorName.loginGradientMid1,  // #6B52FF
      ColorName.loginGradientMid2,  // #6E9AD6
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

/// Alternative: Static class approach if you prefer not using extensions
class AppGradients {
  AppGradients._();

  /// Main login gradient: Purple to Green (left to right)
  static const LinearGradient loginButton = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorName.loginGradientStart, // #6840FF
      ColorName.loginGradientEnd,   // #6EE7B7
    ],
  );

  /// Existing gradients using your current colors
  static const LinearGradient blueGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      ColorName.blueBackground,
      ColorName.blueDarkBackground,
    ],
  );

  static const LinearGradient greenGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ColorName.greenBackground,
      ColorName.greenDarkBackground,
    ],
  );

  static const LinearGradient purpleGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorName.purpleBackground,
      ColorName.purpleDarkBackground,
    ],
  );
}