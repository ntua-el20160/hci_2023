import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Start_Page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.startPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - EightyEight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.androidLargeEightyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create/Join Team".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createJoinTeamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FeedTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.feedtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FeedOne".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.feedoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Feed (Home)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.feedHomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Booth-Choose Song".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.boothChooseSongScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Booth-Song Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.boothSongSearchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Booth-Song Recommendation".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.boothSongRecommendationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Song Recommendation".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.songRecommendationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Alternative: Record SoundTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.alternativeRecordSoundtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Alternative: Record SoundOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.alternativeRecordSoundoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Booth-Vote for users".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.boothVoteForUsersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Vote for usersOne".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.voteForUsersoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Vote for usersTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.voteForUserstwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Booth-Game Finished Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.boothGameFinishedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Stats".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.statsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Booth-Alternative: Record Sound".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.boothAlternativeRecordSoundScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Friend Leaderboard(yesterday\\'s) - Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .friendLeaderboardYesterdaySContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Friend Leaderboard(all time)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.friendLeaderboardAllTimeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Local Picks".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.localPicksScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Post".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.postScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Username".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changeUsernameScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
