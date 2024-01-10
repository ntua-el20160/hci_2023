import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/vote_for_usersone_screen/models/vote_for_usersone_model.dart';

/// A provider class for the VoteForUsersoneScreen.
///
/// This provider manages the state of the VoteForUsersoneScreen, including the
/// current voteForUsersoneModelObj
class VoteForUsersoneProvider extends ChangeNotifier {
  VoteForUsersoneModel voteForUsersoneModelObj = VoteForUsersoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
