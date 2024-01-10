import 'package:flutter/material.dart';
import 'package:moodj2/presentation/start_page_screen/start_page_screen.dart';
import 'package:moodj2/presentation/android_large_eightyeight_screen/android_large_eightyeight_screen.dart';
import 'package:moodj2/presentation/log_in_screen/log_in_screen.dart';
import 'package:moodj2/presentation/create_join_team_screen/create_join_team_screen.dart';
import 'package:moodj2/presentation/feedtwo_screen/feedtwo_screen.dart';
import 'package:moodj2/presentation/feedone_screen/feedone_screen.dart';
import 'package:moodj2/presentation/feed_home_screen/feed_home_screen.dart';
import 'package:moodj2/presentation/booth_choose_song_screen/booth_choose_song_screen.dart';
import 'package:moodj2/presentation/booth_song_search_screen/booth_song_search_screen.dart';
import 'package:moodj2/presentation/booth_song_recommendation_screen/booth_song_recommendation_screen.dart';
import 'package:moodj2/presentation/song_recommendation_screen/song_recommendation_screen.dart';
import 'package:moodj2/presentation/alternative_record_soundtwo_screen/alternative_record_soundtwo_screen.dart';
import 'package:moodj2/presentation/alternative_record_soundone_screen/alternative_record_soundone_screen.dart';
import 'package:moodj2/presentation/booth_vote_for_users_screen/booth_vote_for_users_screen.dart';
import 'package:moodj2/presentation/vote_for_usersone_screen/vote_for_usersone_screen.dart';
import 'package:moodj2/presentation/vote_for_userstwo_screen/vote_for_userstwo_screen.dart';
import 'package:moodj2/presentation/booth_game_finished_screen/booth_game_finished_screen.dart';
import 'package:moodj2/presentation/stats_screen/stats_screen.dart';
import 'package:moodj2/presentation/booth_alternative_record_sound_screen/booth_alternative_record_sound_screen.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_container_screen/friend_leaderboard_yesterday_s_container_screen.dart';
import 'package:moodj2/presentation/friend_leaderboard_all_time_screen/friend_leaderboard_all_time_screen.dart';
import 'package:moodj2/presentation/local_picks_screen/local_picks_screen.dart';
import 'package:moodj2/presentation/settings_screen/settings_screen.dart';
import 'package:moodj2/presentation/change_password_screen/change_password_screen.dart';
import 'package:moodj2/presentation/post_screen/post_screen.dart';
import 'package:moodj2/presentation/change_username_screen/change_username_screen.dart';
import 'package:moodj2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startPageScreen = '/start_page_screen';

  static const String androidLargeEightyeightScreen =
      '/android_large_eightyeight_screen';

  static const String logInScreen = '/log_in_screen';

  static const String createJoinTeamScreen = '/create_join_team_screen';

  static const String feedtwoScreen = '/feedtwo_screen';

  static const String feedoneScreen = '/feedone_screen';

  static const String feedHomeScreen = '/feed_home_screen';

  static const String boothChooseSongScreen = '/booth_choose_song_screen';

  static const String boothSongSearchScreen = '/booth_song_search_screen';

  static const String boothSongRecommendationScreen =
      '/booth_song_recommendation_screen';

  static const String songRecommendationScreen = '/song_recommendation_screen';

  static const String alternativeRecordSoundtwoScreen =
      '/alternative_record_soundtwo_screen';

  static const String alternativeRecordSoundoneScreen =
      '/alternative_record_soundone_screen';

  static const String boothVoteForUsersScreen = '/booth_vote_for_users_screen';

  static const String voteForUsersoneScreen = '/vote_for_usersone_screen';

  static const String voteForUserstwoScreen = '/vote_for_userstwo_screen';

  static const String boothGameFinishedScreen = '/booth_game_finished_screen';

  static const String statsScreen = '/stats_screen';

  static const String boothAlternativeRecordSoundScreen =
      '/booth_alternative_record_sound_screen';

  static const String friendLeaderboardYesterdaySPage =
      '/friend_leaderboard_yesterday_s_page';

  static const String friendLeaderboardYesterdaySContainerScreen =
      '/friend_leaderboard_yesterday_s_container_screen';

  static const String friendLeaderboardAllTimeScreen =
      '/friend_leaderboard_all_time_screen';

  static const String localPicksScreen = '/local_picks_screen';

  static const String settingsScreen = '/settings_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String postScreen = '/post_screen';

  static const String changeUsernameScreen = '/change_username_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        startPageScreen: StartPageScreen.builder,
        androidLargeEightyeightScreen: AndroidLargeEightyeightScreen.builder,
        logInScreen: LogInScreen.builder,
        createJoinTeamScreen: CreateJoinTeamScreen.builder,
        feedtwoScreen: FeedtwoScreen.builder,
        feedoneScreen: FeedoneScreen.builder,
        feedHomeScreen: FeedHomeScreen.builder,
        boothChooseSongScreen: BoothChooseSongScreen.builder,
        boothSongSearchScreen: BoothSongSearchScreen.builder,
        boothSongRecommendationScreen: BoothSongRecommendationScreen.builder,
        songRecommendationScreen: SongRecommendationScreen.builder,
        alternativeRecordSoundtwoScreen:
            AlternativeRecordSoundtwoScreen.builder,
        alternativeRecordSoundoneScreen:
            AlternativeRecordSoundoneScreen.builder,
        boothVoteForUsersScreen: BoothVoteForUsersScreen.builder,
        voteForUsersoneScreen: VoteForUsersoneScreen.builder,
        voteForUserstwoScreen: VoteForUserstwoScreen.builder,
        boothGameFinishedScreen: BoothGameFinishedScreen.builder,
        statsScreen: StatsScreen.builder,
        boothAlternativeRecordSoundScreen:
            BoothAlternativeRecordSoundScreen.builder,
        friendLeaderboardYesterdaySContainerScreen:
            FriendLeaderboardYesterdaySContainerScreen.builder,
        friendLeaderboardAllTimeScreen: FriendLeaderboardAllTimeScreen.builder,
        localPicksScreen: LocalPicksScreen.builder,
        settingsScreen: SettingsScreen.builder,
        changePasswordScreen: ChangePasswordScreen.builder,
        postScreen: PostScreen.builder,
        changeUsernameScreen: ChangeUsernameScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: StartPageScreen.builder
      };
}
