import 'models/stats_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'provider/stats_provider.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  StatsScreenState createState() => StatsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => StatsProvider(), child: StatsScreen());
  }
}

// ignore_for_file: must_be_immutable
class StatsScreenState extends State<StatsScreen> {
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
                          appTheme.black900
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 46.h, top: 73.v, right: 46.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 93.h),
                              child: Text("lbl_stats".tr,
                                  style: theme.textTheme.displayMedium)),
                          SizedBox(height: 58.v),
                          GestureDetector(
                              onTap: () {
                                onTapComponentThirtyTwo(context);
                              },
                              child: Container(
                                  width: 257.h,
                                  margin:
                                      EdgeInsets.only(left: 5.h, right: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50.h, vertical: 2.v),
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder51),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(height: 15.v),
                                        Container(
                                            width: 149.h,
                                            margin: EdgeInsets.only(left: 7.h),
                                            child: Text(
                                                "msg_friends_leaderboard".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .headlineMediumKuraleBlack900))
                                      ]))),
                          SizedBox(height: 35.v),
                          GestureDetector(
                              onTap: () {
                                onTapComponentThirtyTwo1(context);
                              },
                              child: Container(
                                  margin: EdgeInsets.only(right: 11.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 96.h, vertical: 2.v),
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder51),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(height: 15.v),
                                        SizedBox(
                                            width: 63.h,
                                            child: Text("lbl_local_picks".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .headlineMediumKuraleBlack900))
                                      ]))),
                          SizedBox(height: 5.v)
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

  /// Navigates to the friendLeaderboardYesterdaySContainerScreen when the action is triggered.
  onTapComponentThirtyTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.friendLeaderboardYesterdaySContainerScreen,
    );
  }

  /// Navigates to the localPicksScreen when the action is triggered.
  onTapComponentThirtyTwo1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.localPicksScreen,
    );
  }
}
