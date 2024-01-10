import 'models/change_username_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'package:moodj2/widgets/custom_elevated_button.dart';
import 'provider/change_username_provider.dart';

class ChangeUsernameScreen extends StatefulWidget {
  const ChangeUsernameScreen({Key? key}) : super(key: key);

  @override
  ChangeUsernameScreenState createState() => ChangeUsernameScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChangeUsernameProvider(),
        child: ChangeUsernameScreen());
  }
}

// ignore_for_file: must_be_immutable
class ChangeUsernameScreenState extends State<ChangeUsernameScreen> {
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
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 52.h, vertical: 162.v),
                        decoration: AppDecoration.gradientBlackToBlack9002,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 33.v),
                              Container(
                                  width: 204.h,
                                  margin:
                                      EdgeInsets.only(left: 26.h, right: 25.h),
                                  child: Text("msg_enter_your_new_username".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .headlineLargeKurale)),
                              SizedBox(height: 27.v),
                              Container(
                                  height: 67.v,
                                  width: 253.h,
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray100,
                                      borderRadius:
                                          BorderRadius.circular(33.h))),
                              SizedBox(height: 43.v),
                              CustomElevatedButton(
                                  height: 64.v,
                                  text: "lbl_update".tr,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 29.h),
                                  buttonTextStyle: CustomTextStyles
                                      .displayMediumKatibehBlack900,
                                  onPressed: () {
                                    onTapUpdate(context);
                                  })
                            ])))),
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

  /// Navigates to the settingsScreen when the action is triggered.
  onTapUpdate(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }
}
