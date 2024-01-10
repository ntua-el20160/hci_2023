import 'models/booth_song_recommendation_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'provider/booth_song_recommendation_provider.dart';

class BoothSongRecommendationScreen extends StatefulWidget {
  const BoothSongRecommendationScreen({Key? key}) : super(key: key);

  @override
  BoothSongRecommendationScreenState createState() =>
      BoothSongRecommendationScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => BoothSongRecommendationProvider(),
        child: BoothSongRecommendationScreen());
  }
}

// ignore_for_file: must_be_immutable
class BoothSongRecommendationScreenState
    extends State<BoothSongRecommendationScreen> {
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
                height: 570.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgAndroidLarge640x359,
                      height: 640.v,
                      width: 359.h,
                      alignment: Alignment.bottomCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 42.h, vertical: 15.v),
                          decoration: AppDecoration.gradientGrayToBlack,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.h, right: 55.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgQuestionOnprimarycontainer,
                                              height: 48.v,
                                              width: 56.h,
                                              margin: EdgeInsets.only(
                                                  top: 5.v, bottom: 20.v),
                                              onTap: () {
                                                onTapImgQuestion(context);
                                              }),
                                          Text("lbl_song_search".tr,
                                              style:
                                                  theme.textTheme.displayMedium)
                                        ]))),
                            SizedBox(height: 73.v),
                            GestureDetector(
                                onTap: () {
                                  onTapComponentTwentySix(context);
                                },
                                child: Container(
                                    height: 52.v,
                                    width: 216.h,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.h, vertical: 5.v),
                                    decoration: AppDecoration.fillBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder26),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgRewind,
                                        height: 41.v,
                                        width: 25.h,
                                        alignment: Alignment.centerLeft))),
                            SizedBox(height: 18.v),
                            Container(
                                height: 238.v,
                                width: 275.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.h),
                                    gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1),
                                        colors: [
                                          appTheme.blueGray100,
                                          appTheme.blueGray100.withOpacity(0.9),
                                          appTheme.blueGray100.withOpacity(0)
                                        ]))),
                            SizedBox(height: 18.v)
                          ])))
                ])),
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

  /// Navigates to the boothChooseSongScreen when the action is triggered.
  onTapImgQuestion(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.boothChooseSongScreen,
    );
  }

  /// Navigates to the boothSongSearchScreen when the action is triggered.
  onTapComponentTwentySix(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.boothSongSearchScreen,
    );
  }
}
