import 'models/feedone_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'provider/feedone_provider.dart';

class FeedoneScreen extends StatefulWidget {
  const FeedoneScreen({Key? key}) : super(key: key);

  @override
  FeedoneScreenState createState() => FeedoneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FeedoneProvider(), child: FeedoneScreen());
  }
}

// ignore_for_file: must_be_immutable
class FeedoneScreenState extends State<FeedoneScreen> {
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
                        EdgeInsets.only(left: 36.h, top: 70.v, right: 36.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 108.h),
                              child: Text("lbl_feed".tr,
                                  style: theme.textTheme.displayMedium)),
                          SizedBox(height: 58.v),
                          Container(
                              height: 225.v,
                              width: 287.h,
                              margin: EdgeInsets.only(left: 1.h),
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: 165.v,
                                            width: 252.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30.h),
                                                gradient: LinearGradient(
                                                    begin: Alignment(0.5, 0),
                                                    end: Alignment(0.5, 1),
                                                    colors: [
                                                      appTheme.blueGray100,
                                                      appTheme.blueGray100
                                                          .withOpacity(0.9),
                                                      appTheme.blueGray100
                                                          .withOpacity(0)
                                                    ])))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            height: 165.v,
                                            width: 252.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30.h),
                                                gradient: LinearGradient(
                                                    begin: Alignment(0.5, 0),
                                                    end: Alignment(0.5, 1),
                                                    colors: [
                                                      appTheme.blueGray100,
                                                      appTheme.blueGray100
                                                          .withOpacity(0.9),
                                                      appTheme.blueGray100
                                                          .withOpacity(0)
                                                    ])))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapComponentFiftyNine(context);
                                            },
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    right: 39.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 12.h,
                                                    vertical: 9.v),
                                                decoration: AppDecoration
                                                    .gradientBlueGrayToBlueGray
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder30),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 10.h),
                                                          child: Row(children: [
                                                            Container(
                                                                height: 49.v,
                                                                width: 46.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            5.v,
                                                                        bottom: 3
                                                                            .v),
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .blueGray100,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24.h))),
                                                            Container(
                                                                height: 58.v,
                                                                width: 150.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 14
                                                                            .h),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.centerLeft,
                                                                          child: Padding(
                                                                              padding: EdgeInsets.only(left: 28.h, right: 35.h),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                Text("lbl_mary".tr, style: CustomTextStyles.headlineLarge32),
                                                                                Align(alignment: Alignment.centerRight, child: Text("lbl_levitating".tr, style: theme.textTheme.titleLarge))
                                                                              ]))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: Container(
                                                                              height: 21.v,
                                                                              width: 150.h,
                                                                              margin: EdgeInsets.only(bottom: 7.v),
                                                                              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v),
                                                                              decoration: AppDecoration.gradientPrimaryContainerToBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                              child: CustomImageView(imagePath: ImageConstant.imgVector, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.bottomLeft)))
                                                                    ]))
                                                          ])),
                                                      SizedBox(height: 3.v),
                                                      Container(
                                                          width: 208.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 2.h,
                                                                  right: 10.h),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal: 25
                                                                      .h,
                                                                  vertical:
                                                                      6.v),
                                                          decoration: AppDecoration
                                                              .fillBlackC
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder30),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        1.v),
                                                                Container(
                                                                    width:
                                                                        149.h,
                                                                    margin: EdgeInsets.only(
                                                                        left: 6
                                                                            .h),
                                                                    child: Text(
                                                                        "msg_the_absolute_party"
                                                                            .tr,
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineSmall))
                                                              ]))
                                                    ]))))
                                  ])),
                          SizedBox(height: 16.v),
                          Padding(
                              padding: EdgeInsets.only(left: 71.h),
                              child: Text("msg_swipe_for_more".tr,
                                  style: CustomTextStyles.titleLargeKatibeh)),
                          SizedBox(height: 5.v)
                        ]))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: _buildBottomBar(context))));
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

  /// Navigates to the feedtwoScreen when the action is triggered.
  onTapComponentFiftyNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.feedtwoScreen,
    );
  }
}
