import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/models/friend_leaderboard_yesterday_s_model.dart';
import '../models/userprofilelist_item_model.dart';

/// A provider class for the FriendLeaderboardYesterdaySPage.
///
/// This provider manages the state of the FriendLeaderboardYesterdaySPage, including the
/// current friendLeaderboardYesterdaySModelObj

// ignore_for_file: must_be_immutable
class FriendLeaderboardYesterdaySProvider extends ChangeNotifier {
  FriendLeaderboardYesterdaySModel friendLeaderboardYesterdaySModelObj =
      FriendLeaderboardYesterdaySModel();

  @override
  void dispose() {
    super.dispose();
  }
}
