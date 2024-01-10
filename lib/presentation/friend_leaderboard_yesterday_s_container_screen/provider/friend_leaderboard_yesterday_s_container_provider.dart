import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_container_screen/models/friend_leaderboard_yesterday_s_container_model.dart';

/// A provider class for the FriendLeaderboardYesterdaySContainerScreen.
///
/// This provider manages the state of the FriendLeaderboardYesterdaySContainerScreen, including the
/// current friendLeaderboardYesterdaySContainerModelObj

// ignore_for_file: must_be_immutable
class FriendLeaderboardYesterdaySContainerProvider extends ChangeNotifier {
  FriendLeaderboardYesterdaySContainerModel
      friendLeaderboardYesterdaySContainerModelObj =
      FriendLeaderboardYesterdaySContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
