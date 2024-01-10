import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/stats_screen/models/stats_model.dart';

/// A provider class for the StatsScreen.
///
/// This provider manages the state of the StatsScreen, including the
/// current statsModelObj

// ignore_for_file: must_be_immutable
class StatsProvider extends ChangeNotifier {
  StatsModel statsModelObj = StatsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
