import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/booth_song_recommendation_screen/models/booth_song_recommendation_model.dart';

/// A provider class for the BoothSongRecommendationScreen.
///
/// This provider manages the state of the BoothSongRecommendationScreen, including the
/// current boothSongRecommendationModelObj

// ignore_for_file: must_be_immutable
class BoothSongRecommendationProvider extends ChangeNotifier {
  BoothSongRecommendationModel boothSongRecommendationModelObj =
      BoothSongRecommendationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
