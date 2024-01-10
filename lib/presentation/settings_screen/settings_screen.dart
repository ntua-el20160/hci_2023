import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/core/utils/validation_functions.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'package:moodj2/widgets/custom_elevated_button.dart';
import 'package:moodj2/widgets/custom_text_form_field.dart';
import 'provider/settings_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  SettingsScreenState createState() => SettingsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingsProvider(), child: SettingsScreen());
  }
}

// ignore_for_file: must_be_immutable
class SettingsScreenState extends State<SettingsScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 7.h, vertical: 61.v),
                        decoration: AppDecoration.gradientBlackToBlack9001,
                        child: Column(children: [
                          Text("msg_account_settings".tr,
                              style: CustomTextStyles.displayMediumKatibeh),
                          SizedBox(height: 1.v),
                          _buildUserName1(context),
                          SizedBox(height: 69.v),
                          _buildPostNote1(context)
                        ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Selector<SettingsProvider, TextEditingController?>(
            selector: (context, provider) => provider.userNameController,
            builder: (context, userNameController, child) {
              return CustomTextFormField(
                  controller: userNameController,
                  hintText: "lbl_change_username".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Selector<SettingsProvider, TextEditingController?>(
            selector: (context, provider) => provider.passwordController,
            builder: (context, passwordController, child) {
              return CustomTextFormField(
                  controller: passwordController,
                  hintText: "lbl_change_password".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildLogOut(BuildContext context) {
    return CustomElevatedButton(
        width: 237.h,
        text: "lbl_log_out".tr,
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapLogOut(context);
        },
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildUserName1(BuildContext context) {
    return SizedBox(
        height: 173.v,
        width: 335.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 44.h, vertical: 7.v),
                  decoration: AppDecoration.gradientBlueGrayToBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildUserName(context),
                    SizedBox(height: 8.v),
                    _buildPassword(context),
                    SizedBox(height: 49.v)
                  ]))),
          _buildLogOut(context)
        ]));
  }

  /// Section Widget
  Widget _buildPostNote(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_post_note".tr,
        margin: EdgeInsets.only(left: 8.h, right: 1.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapPostNote(context);
        });
  }

  /// Section Widget
  Widget _buildLeaveTeam(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_leave_team".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapLeaveTeam(context);
        });
  }

  /// Section Widget
  Widget _buildTeamNumber(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_team_number_783".tr,
        margin: EdgeInsets.only(left: 8.h, right: 1.h),
        buttonStyle: CustomButtonStyles.outlineBlackTL25);
  }

  /// Section Widget
  Widget _buildPostNote1(BuildContext context) {
    return SizedBox(
        height: 226.v,
        width: 334.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 44.h, vertical: 6.v),
                  decoration: AppDecoration.gradientBlueGrayToBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildPostNote(context),
                    SizedBox(height: 7.v),
                    _buildLeaveTeam(context),
                    SizedBox(height: 8.v),
                    _buildTeamNumber(context),
                    SizedBox(height: 8.v)
                  ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Text("msg_social_settings".tr,
                  style: CustomTextStyles.displayMediumKatibeh))
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

  /// Navigates to the startPageScreen when the action is triggered.
  onTapLogOut(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.startPageScreen,
    );
  }

  /// Navigates to the postScreen when the action is triggered.
  onTapPostNote(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.postScreen,
    );
  }

  /// Navigates to the createJoinTeamScreen when the action is triggered.
  onTapLeaveTeam(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createJoinTeamScreen,
    );
  }
}
