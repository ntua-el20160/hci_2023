import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/alternative_record_soundtwo_screen/models/alternative_record_soundtwo_model.dart';

/// A provider class for the AlternativeRecordSoundtwoScreen.
///
/// This provider manages the state of the AlternativeRecordSoundtwoScreen, including the
/// current alternativeRecordSoundtwoModelObj

// ignore_for_file: must_be_immutable
class AlternativeRecordSoundtwoProvider extends ChangeNotifier {
  AlternativeRecordSoundtwoModel alternativeRecordSoundtwoModelObj =
      AlternativeRecordSoundtwoModel();

  String radioGroup = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeRadioButton1(String value) {
    radioGroup = value;
    notifyListeners();
  }
}
