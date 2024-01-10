import 'models/feedtwo_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'provider/feedtwo_provider.dart';

class FeedtwoScreen extends StatefulWidget {
  const FeedtwoScreen({Key? key}) : super(key: key);

  @override
  FeedtwoScreenState createState() => FeedtwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FeedtwoProvider(), child: FeedtwoScreen());
  }
}

// ignore_for_file: must_be_immutable
class FeedtwoScreenState extends State<FeedtwoScreen> {
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
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 59.v),
                    child: Column(children: [
                      Text("lbl_feed".tr, style: theme.textTheme.displayMedium),
                      SizedBox(height: 44.v),
                      _buildFeedStack(context),
                      SizedBox(height: 11.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 90.h),
                              child: Text("msg_swipe_for_more".tr,
                                  style: CustomTextStyles.titleLargeKatibeh))),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildFeedStack(BuildContext context) {
    return SizedBox(
        height: 222.v,
        width: 307.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 158.v,
                  width: 257.h,
                  margin: EdgeInsets.only(top: 26.v),
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
                  width: 254.h,
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
                      margin: EdgeInsets.only(right: 53.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 13.h, vertical: 10.v),
                      decoration: AppDecoration.gradientBlueGrayToBlueGray
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 11.h),
                                child: Row(children: [
                                  Container(
                                      height: 53.v,
                                      width: 47.h,
                                      margin: EdgeInsets.only(top: 5.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.blueGray100,
                                          borderRadius:
                                              BorderRadius.circular(26.h))),
                                  Container(
                                      height: 58.v,
                                      width: 153.h,
                                      margin: EdgeInsets.only(left: 14.h),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 34.h),
                                                    child: Text("lbl_george".tr,
                                                        style: CustomTextStyles
                                                            .headlineLarge32))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    height: 22.v,
                                                    width: 153.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 3.v),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle47,
                                                              height: 22.v,
                                                              width: 153.h,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          11.h),
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVector,
                                                              height: 16.v,
                                                              width: 15.h,
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          10.h,
                                                                      bottom:
                                                                          2.v))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 18.h),
                                                    child: Text(
                                                        "lbl_i_follow_rivers"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .titleLarge)))
                                          ]))
                                ])),
                            SizedBox(height: 7.v),
                            Container(
                                width: 213.h,
                                margin: EdgeInsets.only(left: 3.h, right: 11.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.h, vertical: 7.v),
                                decoration: AppDecoration.fillBlackC.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder30),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 5.v),
                                      Container(
                                          width: 193.h,
                                          margin: EdgeInsets.only(left: 7.h),
                                          child: Text(
                                              "msg_so_much_better_than".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: theme
                                                  .textTheme.headlineSmall))
                                    ]))
                          ]))))
        ]));
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

  /// Navigates to the feedHomeScreen when the action is triggered.
  onTapComponentFiftyNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.feedHomeScreen,
    );
  }
}
