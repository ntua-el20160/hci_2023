import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/change_username_screen/models/change_username_model.dart';

/// A provider class for the ChangeUsernameScreen.
///
/// This provider manages the state of the ChangeUsernameScreen, including the
/// current changeUsernameModelObj

// ignore_for_file: must_be_immutable
class ChangeUsernameProvider extends ChangeNotifier {
  ChangeUsernameModel changeUsernameModelObj = ChangeUsernameModel();

  @override
  void dispose() {
    super.dispose();
  }
}
