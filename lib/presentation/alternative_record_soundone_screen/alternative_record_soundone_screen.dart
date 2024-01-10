import 'models/alternative_record_soundone_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'provider/alternative_record_soundone_provider.dart';

class AlternativeRecordSoundoneScreen extends StatefulWidget {
  const AlternativeRecordSoundoneScreen({Key? key}) : super(key: key);

  @override
  AlternativeRecordSoundoneScreenState createState() =>
      AlternativeRecordSoundoneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AlternativeRecordSoundoneProvider(),
        child: AlternativeRecordSoundoneScreen());
  }
}

// ignore_for_file: must_be_immutable
class AlternativeRecordSoundoneScreenState
    extends State<AlternativeRecordSoundoneScreen> {
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
                          appTheme.black900
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 111.v),
                    child: Column(children: [
                      Text("lbl_booth".tr,
                          style: theme.textTheme.displayMedium),
                      Spacer(flex: 45),
                      _buildComponentForty(context),
                      Spacer(flex: 54)
                    ]))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildComponentForty(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 47.h, vertical: 6.v),
        decoration: AppDecoration.fillBlackC
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.imgContrastBlack900,
              height: 57.v,
              width: 46.h,
              margin: EdgeInsets.only(bottom: 1.v),
              onTap: () {
                onTapImgContrast(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 39.h, top: 6.v, bottom: 3.v),
              child:
                  Text("lbl".tr, style: CustomTextStyles.displayMediumKatibeh))
        ]));
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

  /// Navigates to the alternativeRecordSoundtwoScreen when the action is triggered.
  onTapImgContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.alternativeRecordSoundtwoScreen,
    );
  }
}
