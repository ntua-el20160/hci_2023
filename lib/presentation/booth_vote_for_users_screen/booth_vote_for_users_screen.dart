import 'models/booth_vote_for_users_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'provider/booth_vote_for_users_provider.dart';

class BoothVoteForUsersScreen extends StatefulWidget {
  const BoothVoteForUsersScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BoothVoteForUsersScreenState createState() => BoothVoteForUsersScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BoothVoteForUsersProvider(),
      child: BoothVoteForUsersScreen(),
    );
  }
}

class BoothVoteForUsersScreenState extends State<BoothVoteForUsersScreen> {
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
                SizedBox(height: 5.v),
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
                  margin: EdgeInsets.only(right: 19.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.fillBlackC.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder30,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 59.v,
                        width: 54.h,
                        margin: EdgeInsets.only(bottom: 1.v),
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
                                width: 41.h,
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
                      Padding(
                        padding: EdgeInsets.only(
                          left: 39.h,
                          bottom: 7.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_song_1".tr,
                              style: theme.textTheme.headlineMedium,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_artist".tr,
                                style: CustomTextStyles.titleLargeKatibeh,
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
                  width: 135.h,
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
                        width: 135.h,
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
