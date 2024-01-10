import '../friend_leaderboard_yesterday_s_page/widgets/userprofilelist_item_widget.dart';
import 'models/friend_leaderboard_yesterday_s_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/widgets/custom_elevated_button.dart';
import 'provider/friend_leaderboard_yesterday_s_provider.dart';

class FriendLeaderboardYesterdaySPage extends StatefulWidget {
  const FriendLeaderboardYesterdaySPage({Key? key}) : super(key: key);

  @override
  FriendLeaderboardYesterdaySPageState createState() =>
      FriendLeaderboardYesterdaySPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FriendLeaderboardYesterdaySProvider(),
        child: FriendLeaderboardYesterdaySPage());
  }
}

class FriendLeaderboardYesterdaySPageState
    extends State<FriendLeaderboardYesterdaySPage> {
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
                    decoration: AppDecoration.gradientBlackToBlack900,
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 13.h),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 11.v),
                              Text("msg_friend_leaderboard".tr,
                                  style: CustomTextStyles.displayMedium40),
                              SizedBox(height: 11.v),
                              Text("lbl_yesterday_s".tr,
                                  style: CustomTextStyles.headlineLarge32),
                              SizedBox(height: 5.v),
                              _buildUserProfileList(context),
                              SizedBox(height: 55.v),
                              _buildBottomBar(context)
                            ]))))));
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 36.h, right: 26.h),
        child: Consumer<FriendLeaderboardYesterdaySProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 12.v);
              },
              itemCount: provider.friendLeaderboardYesterdaySModelObj
                  .userprofilelistItemList.length,
              itemBuilder: (context, index) {
                UserprofilelistItemModel model = provider
                    .friendLeaderboardYesterdaySModelObj
                    .userprofilelistItemList[index];
                return UserprofilelistItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 31.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              CustomElevatedButton(
                  width: 136.h,
                  text: "lbl_yesterday_s".tr,
                  buttonStyle: CustomButtonStyles.outlineBlackTL25,
                  buttonTextStyle: CustomTextStyles.headlineLargeBlack900),
              CustomElevatedButton(
                  width: 154.h,
                  text: "lbl_all_time".tr,
                  margin: EdgeInsets.only(left: 13.h),
                  buttonTextStyle: CustomTextStyles.headlineLargeBlack900,
                  onPressed: () {
                    onTapAlltime(context);
                  })
            ])));
  }

  /// Navigates to the friendLeaderboardAllTimeScreen when the action is triggered.
  onTapAlltime(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.friendLeaderboardAllTimeScreen,
    );
  }
}
