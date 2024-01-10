import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/vote_for_userstwo_screen/models/vote_for_userstwo_model.dart';

/// A provider class for the VoteForUserstwoScreen.
///
/// This provider manages the state of the VoteForUserstwoScreen, including the
/// current voteForUserstwoModelObj
class VoteForUserstwoProvider extends ChangeNotifier {
  VoteForUserstwoModel voteForUserstwoModelObj = VoteForUserstwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
