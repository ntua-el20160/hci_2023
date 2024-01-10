import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/alternative_record_soundone_screen/models/alternative_record_soundone_model.dart';

/// A provider class for the AlternativeRecordSoundoneScreen.
///
/// This provider manages the state of the AlternativeRecordSoundoneScreen, including the
/// current alternativeRecordSoundoneModelObj

// ignore_for_file: must_be_immutable
class AlternativeRecordSoundoneProvider extends ChangeNotifier {
  AlternativeRecordSoundoneModel alternativeRecordSoundoneModelObj =
      AlternativeRecordSoundoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
