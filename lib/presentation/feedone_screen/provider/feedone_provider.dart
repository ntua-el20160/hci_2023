import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/feedone_screen/models/feedone_model.dart';

/// A provider class for the FeedoneScreen.
///
/// This provider manages the state of the FeedoneScreen, including the
/// current feedoneModelObj

// ignore_for_file: must_be_immutable
class FeedoneProvider extends ChangeNotifier {
  FeedoneModel feedoneModelObj = FeedoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
