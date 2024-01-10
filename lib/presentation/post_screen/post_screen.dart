import 'models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'package:moodj2/widgets/custom_elevated_button.dart';
import 'provider/post_provider.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  PostScreenState createState() => PostScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PostProvider(), child: PostScreen());
  }
}

// ignore_for_file: must_be_immutable
class PostScreenState extends State<PostScreen> {
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
                        EdgeInsets.symmetric(horizontal: 54.h, vertical: 85.v),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          Container(
                              width: 252.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13.h, vertical: 6.v),
                              decoration: AppDecoration
                                  .gradientBlueGrayToBlueGray
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder30),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(right: 11.h),
                                        child: Row(children: [
                                          Container(
                                              height: 50.v,
                                              width: 47.h,
                                              margin: EdgeInsets.only(
                                                  top: 7.v, bottom: 3.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.blueGray100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.h))),
                                          Container(
                                              height: 61.v,
                                              width: 152.h,
                                              margin:
                                                  EdgeInsets.only(left: 14.h),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 36.h),
                                                            child: Text(
                                                                "lbl_you".tr,
                                                                style: CustomTextStyles
                                                                    .headlineLarge32))),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Container(
                                                            height: 21.v,
                                                            width: 152.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        7.v),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgRectangle47,
                                                                      height:
                                                                          21.v,
                                                                      width:
                                                                          152.h,
                                                                      radius: BorderRadius
                                                                          .circular(10
                                                                              .h),
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgVector,
                                                                      height:
                                                                          15.v,
                                                                      width:
                                                                          14.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      margin: EdgeInsets.only(
                                                                          left: 10
                                                                              .h,
                                                                          bottom:
                                                                              2.v))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text(
                                                            "lbl_your_song".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleLarge))
                                                  ]))
                                        ])),
                                    SizedBox(height: 3.v),
                                    CustomElevatedButton(
                                        height: 75.v,
                                        text: "lbl_write".tr,
                                        margin: EdgeInsets.only(
                                            left: 2.h, right: 11.h),
                                        buttonStyle:
                                            CustomButtonStyles.fillBlackC,
                                        buttonTextStyle:
                                            theme.textTheme.headlineSmall!),
                                    SizedBox(height: 3.v)
                                  ])),
                          SizedBox(height: 31.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapComponentFortyTwo(context);
                                  },
                                  child: Container(
                                      height: 54.v,
                                      width: 106.h,
                                      margin: EdgeInsets.only(right: 66.h),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle42,
                                                height: 52.v,
                                                width: 106.h,
                                                alignment: Alignment.topCenter),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text("lbl_post".tr,
                                                    style: CustomTextStyles
                                                        .displayMediumKatibehBlack900))
                                          ]))))
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

  /// Navigates to the settingsScreen when the action is triggered.
  onTapComponentFortyTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }
}
