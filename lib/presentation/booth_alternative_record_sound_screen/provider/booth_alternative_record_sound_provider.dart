import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/booth_alternative_record_sound_screen/models/booth_alternative_record_sound_model.dart';

/// A provider class for the BoothAlternativeRecordSoundScreen.
///
/// This provider manages the state of the BoothAlternativeRecordSoundScreen, including the
/// current boothAlternativeRecordSoundModelObj

// ignore_for_file: must_be_immutable
class BoothAlternativeRecordSoundProvider extends ChangeNotifier {
  BoothAlternativeRecordSoundModel boothAlternativeRecordSoundModelObj =
      BoothAlternativeRecordSoundModel();

  @override
  void dispose() {
    super.dispose();
  }
}
