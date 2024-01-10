import 'models/booth_alternative_record_sound_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'provider/booth_alternative_record_sound_provider.dart';

class BoothAlternativeRecordSoundScreen extends StatefulWidget {
  const BoothAlternativeRecordSoundScreen({Key? key}) : super(key: key);

  @override
  BoothAlternativeRecordSoundScreenState createState() =>
      BoothAlternativeRecordSoundScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => BoothAlternativeRecordSoundProvider(),
        child: BoothAlternativeRecordSoundScreen());
  }
}

// ignore_for_file: must_be_immutable
class BoothAlternativeRecordSoundScreenState
    extends State<BoothAlternativeRecordSoundScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 24.h, vertical: 107.v),
                decoration: AppDecoration.gradientGrayToBlack,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 61.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgQuestionOnprimarycontainer,
                                height: 48.v,
                                width: 56.h,
                                margin: EdgeInsets.only(top: 2.v),
                                onTap: () {
                                  onTapImgQuestion(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text("lbl_booth".tr,
                                    style: theme.textTheme.displayMedium))
                          ])),
                      Spacer(flex: 37),
                      _buildComponentForty(context),
                      Spacer(flex: 62)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildComponentForty(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
            margin: EdgeInsets.only(left: 17.h),
            padding: EdgeInsets.symmetric(horizontal: 47.h, vertical: 6.v),
            decoration: AppDecoration.fillBlackC
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 57.v,
                      width: 46.h,
                      margin: EdgeInsets.only(bottom: 1.v),
                      onTap: () {
                        onTapImgContrast(context);
                      }),
                  Padding(
                      padding: EdgeInsets.only(left: 13.h, bottom: 16.v),
                      child: Text("lbl_record".tr,
                          style: theme.textTheme.displaySmall))
                ])));
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

  /// Navigates to the alternativeRecordSoundoneScreen when the action is triggered.
  onTapImgContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.alternativeRecordSoundoneScreen,
    );
  }
}
