import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/booth_vote_for_users_screen/models/booth_vote_for_users_model.dart';

/// A provider class for the BoothVoteForUsersScreen.
///
/// This provider manages the state of the BoothVoteForUsersScreen, including the
/// current boothVoteForUsersModelObj
class BoothVoteForUsersProvider extends ChangeNotifier {
  BoothVoteForUsersModel boothVoteForUsersModelObj = BoothVoteForUsersModel();

  @override
  void dispose() {
    super.dispose();
  }
}
