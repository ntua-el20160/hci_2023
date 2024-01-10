import 'models/booth_choose_song_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'package:moodj2/widgets/custom_icon_button.dart';
import 'provider/booth_choose_song_provider.dart';

class BoothChooseSongScreen extends StatefulWidget {
  const BoothChooseSongScreen({Key? key}) : super(key: key);

  @override
  BoothChooseSongScreenState createState() => BoothChooseSongScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => BoothChooseSongProvider(),
        child: BoothChooseSongScreen());
  }
}

// ignore_for_file: must_be_immutable
class BoothChooseSongScreenState extends State<BoothChooseSongScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: SizeUtils.height,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 623.v,
                                  width: 349.h,
                                  decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme.onPrimaryContainer))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 71.h, vertical: 21.v),
                                  decoration: AppDecoration.gradientGrayToBlack,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("lbl_daily_booth".tr,
                                            style:
                                                theme.textTheme.displayMedium),
                                        SizedBox(height: 49.v),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle150,
                                            height: 180.v,
                                            width: 215.h),
                                        SizedBox(height: 8.v),
                                        Container(
                                            width: 167.h,
                                            margin: EdgeInsets.only(
                                                left: 22.h, right: 27.h),
                                            child: Text(
                                                "msg_late_night_jogging".tr,
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: theme
                                                    .textTheme.displaySmall)),
                                        SizedBox(height: 7.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: CustomIconButton(
                                                      height: 56.v,
                                                      width: 43.h,
                                                      onTap: () {
                                                        onTapBtnInbox(context);
                                                      },
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgInbox))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 22.h),
                                                  child: CustomIconButton(
                                                      height: 56.v,
                                                      width: 44.h,
                                                      onTap: () {
                                                        onTapBtnClock(context);
                                                      },
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClock)))
                                            ]),
                                        SizedBox(height: 98.v)
                                      ])))
                        ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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

  /// Navigates to the boothAlternativeRecordSoundScreen when the action is triggered.
  onTapBtnInbox(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.boothAlternativeRecordSoundScreen,
    );
  }

  /// Navigates to the boothSongRecommendationScreen when the action is triggered.
  onTapBtnClock(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.boothSongRecommendationScreen,
    );
  }
}
