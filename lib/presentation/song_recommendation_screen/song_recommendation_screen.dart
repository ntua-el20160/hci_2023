import 'models/song_recommendation_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'package:moodj2/widgets/custom_elevated_button.dart';
import 'provider/song_recommendation_provider.dart';

class SongRecommendationScreen extends StatefulWidget {
  const SongRecommendationScreen({Key? key}) : super(key: key);

  @override
  SongRecommendationScreenState createState() =>
      SongRecommendationScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SongRecommendationProvider(),
        child: SongRecommendationScreen());
  }
}

// ignore_for_file: must_be_immutable
class SongRecommendationScreenState extends State<SongRecommendationScreen> {
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
                          appTheme.gray800,
                          appTheme.gray800.withOpacity(0.9),
                          appTheme.black900
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 41.h, vertical: 53.v),
                    child: Column(children: [
                      SizedBox(height: 36.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 170.h,
                              margin: EdgeInsets.only(left: 44.h),
                              child: Text("msg_moodj_s_recommendation".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.displayMedium45))),
                      SizedBox(height: 42.v),
                      Container(
                          width: 234.h,
                          margin: EdgeInsets.only(left: 25.h, right: 17.h),
                          child: Text("msg_based_on_your_selection".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 29.v),
                      Container(
                          margin: EdgeInsets.only(left: 12.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 4.v),
                          decoration: AppDecoration.fillBlackC.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    height: 55.v,
                                    width: 53.h,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 55.v,
                                                  width: 53.h,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.black900,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              27.h)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  height: 45.v,
                                                  width: 40.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgPhPlayFill,
                                                            height: 45.v,
                                                            width: 39.h,
                                                            alignment: Alignment
                                                                .centerLeft),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgPhPlayFill,
                                                            height: 45.v,
                                                            width: 39.h,
                                                            alignment: Alignment
                                                                .center)
                                                      ])))
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 17.h, bottom: 6.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_song_name".tr,
                                              style: theme
                                                  .textTheme.headlineMedium),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 28.h),
                                              child: Text("lbl_artist".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeKatibeh))
                                        ]))
                              ])),
                      SizedBox(height: 31.v),
                      CustomElevatedButton(
                          height: 56.v,
                          width: 92.h,
                          text: "lbl_proceed".tr,
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientDeepPurpleCbToBlueGrayDecoration,
                          buttonTextStyle: theme.textTheme.headlineLarge!,
                          onPressed: () {
                            onTapProceed(context);
                          })
                    ]))),
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

  /// Navigates to the boothVoteForUsersScreen when the action is triggered.
  onTapProceed(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.boothVoteForUsersScreen,
    );
  }
}
