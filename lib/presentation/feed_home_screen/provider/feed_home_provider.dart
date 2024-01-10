import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/feed_home_screen/models/feed_home_model.dart';

/// A provider class for the FeedHomeScreen.
///
/// This provider manages the state of the FeedHomeScreen, including the
/// current feedHomeModelObj

// ignore_for_file: must_be_immutable
class FeedHomeProvider extends ChangeNotifier {
  FeedHomeModel feedHomeModelObj = FeedHomeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
