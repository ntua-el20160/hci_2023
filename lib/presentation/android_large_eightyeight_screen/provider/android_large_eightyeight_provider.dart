import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/android_large_eightyeight_screen/models/android_large_eightyeight_model.dart';

/// A provider class for the AndroidLargeEightyeightScreen.
///
/// This provider manages the state of the AndroidLargeEightyeightScreen, including the
/// current androidLargeEightyeightModelObj

// ignore_for_file: must_be_immutable
class AndroidLargeEightyeightProvider extends ChangeNotifier {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  AndroidLargeEightyeightModel androidLargeEightyeightModelObj =
      AndroidLargeEightyeightModel();

  @override
  void dispose() {
    super.dispose();
    editTextController.dispose();
    editTextController1.dispose();
  }
}
