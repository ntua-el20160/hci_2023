import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/start_page_screen/models/start_page_model.dart';

/// A provider class for the StartPageScreen.
///
/// This provider manages the state of the StartPageScreen, including the
/// current startPageModelObj

// ignore_for_file: must_be_immutable
class StartPageProvider extends ChangeNotifier {
  StartPageModel startPageModelObj = StartPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
