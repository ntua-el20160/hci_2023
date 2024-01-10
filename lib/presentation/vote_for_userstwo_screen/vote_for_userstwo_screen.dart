import 'models/vote_for_userstwo_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'provider/vote_for_userstwo_provider.dart';

class VoteForUserstwoScreen extends StatefulWidget {
  const VoteForUserstwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  VoteForUserstwoScreenState createState() => VoteForUserstwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VoteForUserstwoProvider(),
      child: VoteForUserstwoScreen(),
    );
  }
}

class VoteForUserstwoScreenState extends State<VoteForUserstwoScreen> {
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
                appTheme.black900,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 35.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_booth2".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                SizedBox(height: 38.v),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 167.h,
                    child: Text(
                      "msg_late_night_jogging".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                Container(
                  margin: EdgeInsets.only(right: 21.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 3.v,
                  ),
                  decoration: AppDecoration.fillBlackC.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder30,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 59.v,
                        width: 54.h,
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
                                height: 59.v,
                                width: 54.h,
                                decoration: BoxDecoration(
                                  color: appTheme.black900,
                                  borderRadius: BorderRadius.circular(
                                    29.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 48.v,
                                width: 40.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPhPlayFill,
                                      height: 47.v,
                                      width: 39.h,
                                      alignment: Alignment.centerLeft,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPhPlayFill,
                                      height: 47.v,
                                      width: 39.h,
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 62.v,
                        width: 61.h,
                        margin: EdgeInsets.only(
                          left: 37.h,
                          top: 1.v,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "lbl_song_3".tr,
                                style: theme.textTheme.headlineMedium,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "lbl_artist".tr,
                                style: theme.textTheme.headlineLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Container(
                  height: 73.v,
                  width: 134.h,
                  margin: EdgeInsets.only(left: 73.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 46.v,
                        width: 38.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 44.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 73.v,
                        width: 134.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
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
