import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/song_recommendation_screen/models/song_recommendation_model.dart';

/// A provider class for the SongRecommendationScreen.
///
/// This provider manages the state of the SongRecommendationScreen, including the
/// current songRecommendationModelObj

// ignore_for_file: must_be_immutable
class SongRecommendationProvider extends ChangeNotifier {
  SongRecommendationModel songRecommendationModelObj =
      SongRecommendationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
