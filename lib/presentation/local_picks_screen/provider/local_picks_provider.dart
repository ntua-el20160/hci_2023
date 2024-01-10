import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/local_picks_screen/models/local_picks_model.dart';

/// A provider class for the LocalPicksScreen.
///
/// This provider manages the state of the LocalPicksScreen, including the
/// current localPicksModelObj
class LocalPicksProvider extends ChangeNotifier {
  LocalPicksModel localPicksModelObj = LocalPicksModel();

  @override
  void dispose() {
    super.dispose();
  }
}
