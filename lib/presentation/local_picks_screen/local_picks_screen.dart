import 'models/local_picks_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'provider/local_picks_provider.dart';

class LocalPicksScreen extends StatefulWidget {
  const LocalPicksScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LocalPicksScreenState createState() => LocalPicksScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocalPicksProvider(),
      child: LocalPicksScreen(),
    );
  }
}

class LocalPicksScreenState extends State<LocalPicksScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            gradient: LinearGradient(
              begin: Alignment(0.5, 0.5),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.black900,
                appTheme.gray800.withOpacity(0.9),
                appTheme.black900,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 3.h,
              top: 75.v,
              right: 3.h,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_local_picks2".tr,
                  style: theme.textTheme.displayMedium,
                ),
                SizedBox(height: 6.v),
                Text(
                  "msg_for_yesterday_s".tr,
                  style: CustomTextStyles.headlineLarge32,
                ),
                SizedBox(height: 61.v),
                _buildPlaylistSection(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylistSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.gradientBlueGrayToBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(right: 4.h),
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillBlackC.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 51.v,
                  width: 66.h,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 3.v,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 51.v,
                          width: 66.h,
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                            borderRadius: BorderRadius.circular(
                              33.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPhPlayFill,
                        height: 41.v,
                        width: 48.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "lbl_song_name".tr,
                    style: CustomTextStyles.displayMediumKatibeh,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2.h),
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillBlackC.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 51.v,
                  width: 66.h,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 3.v,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 51.v,
                          width: 66.h,
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                            borderRadius: BorderRadius.circular(
                              33.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPhPlayFill,
                        height: 41.v,
                        width: 48.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "lbl_song_name".tr,
                    style: CustomTextStyles.displayMediumKatibeh,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Container(
            margin: EdgeInsets.only(
              left: 2.h,
              right: 3.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillBlackC.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 51.v,
                  width: 66.h,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 3.v,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 51.v,
                          width: 66.h,
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                            borderRadius: BorderRadius.circular(
                              33.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPhPlayFill,
                        height: 41.v,
                        width: 48.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "lbl_song_name".tr,
                    style: CustomTextStyles.displayMediumKatibeh,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homegray50:
        return AppRoutes.friendLeaderboardYesterdaySPage;
      case BottomBarEnum.Vectorgray50:
        return "/";
      case BottomBarEnum.Ticketgray50:
        return "/";
      case BottomBarEnum.Lock:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.friendLeaderboardYesterdaySPage:
        return FriendLeaderboardYesterdaySPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
