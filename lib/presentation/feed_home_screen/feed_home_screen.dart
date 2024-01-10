import 'models/feed_home_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'package:moodj2/widgets/custom_elevated_button.dart';
import 'provider/feed_home_provider.dart';

class FeedHomeScreen extends StatefulWidget {
  const FeedHomeScreen({Key? key}) : super(key: key);

  @override
  FeedHomeScreenState createState() => FeedHomeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FeedHomeProvider(), child: FeedHomeScreen());
  }
}

// ignore_for_file: must_be_immutable
class FeedHomeScreenState extends State<FeedHomeScreen> {
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
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.black900,
                          appTheme.gray800Bb,
                          appTheme.black900
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 27.h, vertical: 56.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 122.h),
                              child: Text("lbl_feed".tr,
                                  style: theme.textTheme.displayMedium))),
                      SizedBox(height: 68.v),
                      _buildFeedHomeComponent(context),
                      SizedBox(height: 18.v),
                      Text("msg_swipe_for_more".tr,
                          style: CustomTextStyles.titleLargeKatibeh),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: _buildBottomBarComponent(context))));
  }

  /// Section Widget
  Widget _buildFeedHomeComponent(BuildContext context) {
    return SizedBox(
        height: 224.v,
        width: 297.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 166.v,
                  width: 252.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.h),
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.blueGray100,
                            appTheme.blueGray100.withOpacity(0.9),
                            appTheme.blueGray100.withOpacity(0)
                          ])))),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 166.v,
                  width: 252.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.h),
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.blueGray100,
                            appTheme.blueGray100.withOpacity(0.9),
                            appTheme.blueGray100.withOpacity(0)
                          ])))),
          Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                  onTap: () {
                    onTapComponentFiftyNine(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 45.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.v),
                      decoration: AppDecoration.gradientBlueGrayToBlueGray
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 11.h),
                                child: Row(children: [
                                  Container(
                                      height: 52.v,
                                      width: 47.h,
                                      margin: EdgeInsets.only(top: 8.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.blueGray100,
                                          borderRadius:
                                              BorderRadius.circular(26.h))),
                                  Container(
                                      height: 61.v,
                                      width: 152.h,
                                      margin: EdgeInsets.only(left: 14.h),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 30.h,
                                                        right: 51.h),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text("lbl_john".tr,
                                                              style: CustomTextStyles
                                                                  .headlineLarge32),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Text(
                                                                  "lbl_clocks"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleLarge))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    height: 22.v,
                                                    width: 152.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 4.v),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.h,
                                                            vertical: 2.v),
                                                    decoration: AppDecoration
                                                        .gradientPrimaryContainerToBlack
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector,
                                                        height: 15.v,
                                                        width: 14.h,
                                                        alignment: Alignment
                                                            .bottomLeft)))
                                          ]))
                                ])),
                            SizedBox(height: 7.v),
                            CustomElevatedButton(
                                height: 79.v,
                                text: "msg_pure_nostalgia".tr,
                                margin: EdgeInsets.only(left: 2.h, right: 11.h),
                                buttonStyle: CustomButtonStyles.fillBlackC,
                                buttonTextStyle:
                                    theme.textTheme.headlineSmall!),
                            SizedBox(height: 3.v)
                          ]))))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBarComponent(BuildContext context) {
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

  /// Navigates to the feedoneScreen when the action is triggered.
  onTapComponentFiftyNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.feedoneScreen,
    );
  }
}
