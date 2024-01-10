import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/booth_song_search_screen/models/booth_song_search_model.dart';

/// A provider class for the BoothSongSearchScreen.
///
/// This provider manages the state of the BoothSongSearchScreen, including the
/// current boothSongSearchModelObj

// ignore_for_file: must_be_immutable
class BoothSongSearchProvider extends ChangeNotifier {
  BoothSongSearchModel boothSongSearchModelObj = BoothSongSearchModel();

  @override
  void dispose() {
    super.dispose();
  }
}
