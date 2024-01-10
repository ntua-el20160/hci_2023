import '../friend_leaderboard_all_time_screen/widgets/userprofilesection_item_widget.dart';
import 'models/friend_leaderboard_all_time_model.dart';
import 'models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'package:moodj2/widgets/custom_elevated_button.dart';
import 'provider/friend_leaderboard_all_time_provider.dart';

class FriendLeaderboardAllTimeScreen extends StatefulWidget {
  const FriendLeaderboardAllTimeScreen({Key? key}) : super(key: key);

  @override
  FriendLeaderboardAllTimeScreenState createState() =>
      FriendLeaderboardAllTimeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FriendLeaderboardAllTimeProvider(),
        child: FriendLeaderboardAllTimeScreen());
  }
}

// ignore_for_file: must_be_immutable
class FriendLeaderboardAllTimeScreenState
    extends State<FriendLeaderboardAllTimeScreen> {
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
                        EdgeInsets.symmetric(horizontal: 26.h, vertical: 55.v),
                    child: Column(children: [
                      SizedBox(height: 18.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 61.h),
                              child: Text("msg_friend_leaderboard".tr,
                                  style: CustomTextStyles.displayMedium40))),
                      SizedBox(height: 54.v),
                      _buildUserProfileSection(context),
                      SizedBox(height: 56.v),
                      _buildFriendLeaderboardSection(context)
                    ]))),
            bottomNavigationBar: _buildBottomBarSection(context)));
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 16.h),
        child: Consumer<FriendLeaderboardAllTimeProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 12.v);
              },
              itemCount: provider.friendLeaderboardAllTimeModelObj
                  .userprofilesectionItemList.length,
              itemBuilder: (context, index) {
                UserprofilesectionItemModel model = provider
                    .friendLeaderboardAllTimeModelObj
                    .userprofilesectionItemList[index];
                return UserprofilesectionItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildFriendLeaderboardSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomElevatedButton(
              width: 154.h,
              text: "lbl_yesterday_s".tr,
              margin: EdgeInsets.only(top: 4.v),
              buttonTextStyle: CustomTextStyles.titleLargeKatibehBlack900,
              onPressed: () {
                onTapYesterdays(context);
              }),
          CustomElevatedButton(
              height: 52.v,
              width: 135.h,
              text: "lbl_all_time".tr,
              buttonStyle: CustomButtonStyles.outlineBlackTL25,
              buttonTextStyle: CustomTextStyles.headlineLargeBlack900)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
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
  onTapYesterdays(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.friendLeaderboardYesterdaySContainerScreen,
    );
  }
}
