import 'models/alternative_record_soundtwo_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'package:moodj2/widgets/custom_elevated_button.dart';
import 'package:moodj2/widgets/custom_radio_button.dart';
import 'provider/alternative_record_soundtwo_provider.dart';

class AlternativeRecordSoundtwoScreen extends StatefulWidget {
  const AlternativeRecordSoundtwoScreen({Key? key}) : super(key: key);

  @override
  AlternativeRecordSoundtwoScreenState createState() =>
      AlternativeRecordSoundtwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AlternativeRecordSoundtwoProvider(),
        child: AlternativeRecordSoundtwoScreen());
  }
}

// ignore_for_file: must_be_immutable
class AlternativeRecordSoundtwoScreenState
    extends State<AlternativeRecordSoundtwoScreen> {
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
                    EdgeInsets.symmetric(horizontal: 19.h, vertical: 108.v),
                decoration: AppDecoration.gradientGrayToBlack,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 71.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgQuestionOnprimarycontainer,
                                    height: 48.v,
                                    width: 56.h,
                                    margin: EdgeInsets.only(top: 6.v),
                                    onTap: () {
                                      onTapImgQuestion(context);
                                    }),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, bottom: 4.v),
                                    child: Text("lbl_booth".tr,
                                        style: theme.textTheme.displayMedium))
                              ])),
                      Spacer(),
                      _buildRecordRadio(context),
                      SizedBox(height: 76.v),
                      CustomElevatedButton(
                          height: 64.v,
                          width: 93.h,
                          text: "lbl_submit".tr,
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientDeepPurpleCbToBlueGray1Decoration,
                          buttonTextStyle: theme.textTheme.headlineMedium!,
                          onPressed: () {
                            onTapSubmit(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 54.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildRecordRadio(BuildContext context) {
    return Consumer<AlternativeRecordSoundtwoProvider>(
        builder: (context, provider, child) {
      return Padding(
          padding: EdgeInsets.only(right: 27.h),
          child: CustomRadioButton(
              text: "lbl_saved".tr,
              value: "lbl_saved".tr,
              groupValue: provider.radioGroup,
              padding: EdgeInsets.fromLTRB(13.h, 5.v, 30.h, 5.v),
              onChange: (value) {
                provider.changeRadioButton1(value);
              }));
    });
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

  /// Navigates to the boothVoteForUsersScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.boothVoteForUsersScreen,
    );
  }
}
