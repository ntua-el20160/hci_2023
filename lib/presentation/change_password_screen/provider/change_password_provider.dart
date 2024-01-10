import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/change_password_screen/models/change_password_model.dart';

/// A provider class for the ChangePasswordScreen.
///
/// This provider manages the state of the ChangePasswordScreen, including the
/// current changePasswordModelObj

// ignore_for_file: must_be_immutable
class ChangePasswordProvider extends ChangeNotifier {
  TextEditingController editTextController = TextEditingController();

  ChangePasswordModel changePasswordModelObj = ChangePasswordModel();

  @override
  void dispose() {
    super.dispose();
    editTextController.dispose();
  }
}
