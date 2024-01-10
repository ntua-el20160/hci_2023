import 'dart:ui';
import 'package:moodj2/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlackC => ElevatedButton.styleFrom(
        backgroundColor: appTheme.black9004c,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientDeepPurpleCbToBlueGrayDecoration =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.07, 0),
          end: Alignment(0.07, 1),
          colors: [
            appTheme.deepPurple100Cb,
            appTheme.blueGray100.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientDeepPurpleCbToBlueGray1Decoration =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.07, 0),
          end: Alignment(0.07, 0),
          colors: [
            appTheme.deepPurple100Cb,
            appTheme.blueGray100.withOpacity(0),
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue800Cc,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19.h),
        ),
        shadowColor: appTheme.black900.withOpacity(0.25),
        elevation: 4,
      );
  static ButtonStyle get outlineBlackTL25 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.deepPurple700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              25.h,
            ),
            topRight: Radius.circular(
              24.h,
            ),
            bottomLeft: Radius.circular(
              25.h,
            ),
            bottomRight: Radius.circular(
              24.h,
            ),
          ),
        ),
        shadowColor: appTheme.black900.withOpacity(0.25),
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
