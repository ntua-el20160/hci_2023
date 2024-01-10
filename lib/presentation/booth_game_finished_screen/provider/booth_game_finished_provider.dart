import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/booth_game_finished_screen/models/booth_game_finished_model.dart';

/// A provider class for the BoothGameFinishedScreen.
///
/// This provider manages the state of the BoothGameFinishedScreen, including the
/// current boothGameFinishedModelObj
class BoothGameFinishedProvider extends ChangeNotifier {
  BoothGameFinishedModel boothGameFinishedModelObj = BoothGameFinishedModel();

  @override
  void dispose() {
    super.dispose();
  }
}
