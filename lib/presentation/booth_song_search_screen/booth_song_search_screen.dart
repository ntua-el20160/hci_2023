import 'models/booth_song_search_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'provider/booth_song_search_provider.dart';

class BoothSongSearchScreen extends StatefulWidget {
  const BoothSongSearchScreen({Key? key}) : super(key: key);

  @override
  BoothSongSearchScreenState createState() => BoothSongSearchScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => BoothSongSearchProvider(),
        child: BoothSongSearchScreen());
  }
}

// ignore_for_file: must_be_immutable
class BoothSongSearchScreenState extends State<BoothSongSearchScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black900,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 25.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 74.v,
                          width: 198.h,
                          margin: EdgeInsets.only(left: 21.h),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgQuestionOnprimarycontainer,
                                    height: 48.v,
                                    width: 56.h,
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(top: 2.v),
                                    onTap: () {
                                      onTapImgQuestion(context);
                                    }),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("lbl_song_search".tr,
                                        style: theme.textTheme.displayMedium))
                              ])),
                      SizedBox(height: 29.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 217.h,
                              margin: EdgeInsets.only(left: 35.h, right: 32.h),
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder26),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    Text("lbl_levi".tr,
                                        style: CustomTextStyles
                                            .displayMediumKatibehBlack900)
                                  ]))),
                      SizedBox(height: 50.v),
                      SizedBox(
                          height: 246.v,
                          width: 275.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        padding: EdgeInsets.all(6.h),
                                        decoration: AppDecoration
                                            .gradientBlueGrayToBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder30),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      left: 2.h, right: 3.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 11.h,
                                                      vertical: 5.v),
                                                  decoration: AppDecoration
                                                      .fillBlackC
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder30),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            height: 60.v,
                                                            width: 52.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        1.v),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Container(
                                                                          height: 60
                                                                              .v,
                                                                          width: 52
                                                                              .h,
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.black900,
                                                                              borderRadius: BorderRadius.circular(30.h)))),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPhPlayFill,
                                                                      height:
                                                                          49.v,
                                                                      width:
                                                                          37.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 22.h,
                                                                    bottom:
                                                                        6.v),
                                                            child: Column(
                                                                children: [
                                                                  Text(
                                                                      "lbl_levitating2"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .headlineMedium),
                                                                  Text(
                                                                      "lbl_dua_lipa"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleLargeKatibeh)
                                                                ])),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgClockGray50,
                                                            height: 30.v,
                                                            width: 21.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 27.h,
                                                                    top: 14.v,
                                                                    bottom:
                                                                        16.v),
                                                            onTap: () {
                                                              onTapImgClock(
                                                                  context);
                                                            })
                                                      ])),
                                              SizedBox(height: 14.v),
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 3.v),
                                                  decoration: AppDecoration
                                                      .fillBlackC
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder30),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                            height: 61.v,
                                                            width: 52.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 1.v,
                                                                    bottom:
                                                                        3.v),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Container(
                                                                          height: 61
                                                                              .v,
                                                                          width: 52
                                                                              .h,
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.black900,
                                                                              borderRadius: BorderRadius.circular(30.h)))),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPhPlayFill,
                                                                      height:
                                                                          49.v,
                                                                      width:
                                                                          37.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        9.v),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_levitate"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .headlineMedium),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 3
                                                                              .h),
                                                                      child: Text(
                                                                          "lbl_21_pilots"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.titleLargeKatibeh))
                                                                ])),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgClockGray50,
                                                            height: 30.v,
                                                            width: 21.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 16.v,
                                                                    bottom:
                                                                        18.v),
                                                            onTap: () {
                                                              onTapImgClock1(
                                                                  context);
                                                            })
                                                      ])),
                                              SizedBox(height: 63.v)
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            left: 11.h, top: 172.v, right: 6.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 11.h, vertical: 3.v),
                                        decoration: AppDecoration.fillBlackC
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder30),
                                        child: Row(children: [
                                          Container(
                                              height: 61.v,
                                              width: 52.h,
                                              margin: EdgeInsets.only(
                                                  top: 2.v, bottom: 3.v),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height: 61.v,
                                                            width: 52.h,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .black900,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30.h)))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPhPlayFill,
                                                        height: 49.v,
                                                        width: 37.h,
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8.h, bottom: 10.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_levi_s_theme".tr,
                                                        style: theme.textTheme
                                                            .headlineMedium),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 39.h),
                                                        child: Text(
                                                            "lbl_aot".tr,
                                                            style: CustomTextStyles
                                                                .titleLargeKatibeh))
                                                  ])),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgClockGray50,
                                              height: 30.v,
                                              width: 21.h,
                                              margin: EdgeInsets.only(
                                                  left: 12.h,
                                                  top: 17.v,
                                                  bottom: 19.v),
                                              onTap: () {
                                                onTapImgClock2(context);
                                              })
                                        ])))
                              ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildUnknownSection(context)));
  }

  /// Section Widget
  Widget _buildUnknownSection(BuildContext context) {
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

  /// Navigates to the boothChooseSongScreen when the action is triggered.
  onTapImgQuestion(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.boothChooseSongScreen,
    );
  }

  /// Navigates to the songRecommendationScreen when the action is triggered.
  onTapImgClock(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.songRecommendationScreen,
    );
  }

  /// Navigates to the songRecommendationScreen when the action is triggered.
  onTapImgClock1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.songRecommendationScreen,
    );
  }

  /// Navigates to the songRecommendationScreen when the action is triggered.
  onTapImgClock2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.songRecommendationScreen,
    );
  }
}
