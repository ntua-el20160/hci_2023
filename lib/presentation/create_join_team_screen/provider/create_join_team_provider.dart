import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/create_join_team_screen/models/create_join_team_model.dart';

/// A provider class for the CreateJoinTeamScreen.
///
/// This provider manages the state of the CreateJoinTeamScreen, including the
/// current createJoinTeamModelObj

// ignore_for_file: must_be_immutable
class CreateJoinTeamProvider extends ChangeNotifier {
  CreateJoinTeamModel createJoinTeamModelObj = CreateJoinTeamModel();

  @override
  void dispose() {
    super.dispose();
  }
}
