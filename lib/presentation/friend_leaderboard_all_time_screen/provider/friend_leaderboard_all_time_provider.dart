import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_all_time_screen/models/friend_leaderboard_all_time_model.dart';
import '../models/userprofilesection_item_model.dart';

/// A provider class for the FriendLeaderboardAllTimeScreen.
///
/// This provider manages the state of the FriendLeaderboardAllTimeScreen, including the
/// current friendLeaderboardAllTimeModelObj

// ignore_for_file: must_be_immutable
class FriendLeaderboardAllTimeProvider extends ChangeNotifier {
  FriendLeaderboardAllTimeModel friendLeaderboardAllTimeModelObj =
      FriendLeaderboardAllTimeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
