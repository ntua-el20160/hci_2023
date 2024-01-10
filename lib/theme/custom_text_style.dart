import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayMedium40 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 40.fSize,
      );
  static get displayMedium45 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 45.fSize,
      );
  static get displayMediumBlack900 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 40.fSize,
      );
  static get displayMediumKatibeh =>
      theme.textTheme.displayMedium!.katibeh.copyWith(
        fontSize: 40.fSize,
      );
  static get displayMediumKatibehBlack900 =>
      theme.textTheme.displayMedium!.katibeh.copyWith(
        color: appTheme.black900,
        fontSize: 40.fSize,
      );
  // Headline text style
  static get headlineLarge32 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
      );
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
      );
  static get headlineLargeKurale => theme.textTheme.headlineLarge!.kurale;
  static get headlineMediumKuraleBlack900 =>
      theme.textTheme.headlineMedium!.kurale.copyWith(
        color: appTheme.black900,
      );
  // Just text style
  static get justAnotherHandOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 96.fSize,
        fontWeight: FontWeight.w400,
      ).justAnotherHand;
  // Title style
  static get titleLargeKatibeh => theme.textTheme.titleLarge!.katibeh;
  static get titleLargeKatibehBlack900 =>
      theme.textTheme.titleLarge!.katibeh.copyWith(
        color: appTheme.black900,
        fontSize: 23.fSize,
      );
  static get titleLargeKuraleBlack900 =>
      theme.textTheme.titleLarge!.kurale.copyWith(
        color: appTheme.black900,
      );
}

extension on TextStyle {
  TextStyle get neuton {
    return copyWith(
      fontFamily: 'Neuton',
    );
  }

  TextStyle get katibeh {
    return copyWith(
      fontFamily: 'Katibeh',
    );
  }

  TextStyle get kurale {
    return copyWith(
      fontFamily: 'Kurale',
    );
  }

  TextStyle get justAnotherHand {
    return copyWith(
      fontFamily: 'Just Another Hand',
    );
  }
}
