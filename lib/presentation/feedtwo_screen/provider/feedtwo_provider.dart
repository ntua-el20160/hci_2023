import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/feedtwo_screen/models/feedtwo_model.dart';

/// A provider class for the FeedtwoScreen.
///
/// This provider manages the state of the FeedtwoScreen, including the
/// current feedtwoModelObj

// ignore_for_file: must_be_immutable
class FeedtwoProvider extends ChangeNotifier {
  FeedtwoModel feedtwoModelObj = FeedtwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
