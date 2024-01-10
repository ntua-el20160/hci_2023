import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/booth_choose_song_screen/models/booth_choose_song_model.dart';

/// A provider class for the BoothChooseSongScreen.
///
/// This provider manages the state of the BoothChooseSongScreen, including the
/// current boothChooseSongModelObj

// ignore_for_file: must_be_immutable
class BoothChooseSongProvider extends ChangeNotifier {
  BoothChooseSongModel boothChooseSongModelObj = BoothChooseSongModel();

  @override
  void dispose() {
    super.dispose();
  }
}
