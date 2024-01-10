import 'models/change_password_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/friend_leaderboard_yesterday_s_page/friend_leaderboard_yesterday_s_page.dart';
import 'package:moodj2/widgets/custom_bottom_bar.dart';
import 'package:moodj2/widgets/custom_elevated_button.dart';
import 'package:moodj2/widgets/custom_text_form_field.dart';
import 'provider/change_password_provider.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  ChangePasswordScreenState createState() => ChangePasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChangePasswordProvider(),
        child: ChangePasswordScreen());
  }
}

// ignore_for_file: must_be_immutable
class ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
            resizeToAvoidBottomInset: false,
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
                        EdgeInsets.only(left: 52.h, right: 52.h, bottom: 98.v),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 91.v),
                          Container(
                              width: 204.h,
                              margin: EdgeInsets.only(left: 28.h, right: 23.h),
                              child: Text("msg_enter_your_new_password".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.headlineLargeKurale)),
                          SizedBox(height: 26.v),
                          Selector<ChangePasswordProvider,
                                  TextEditingController?>(
                              selector: (context, provider) =>
                                  provider.editTextController,
                              builder: (context, editTextController, child) {
                                return CustomTextFormField(
                                    controller: editTextController,
                                    textInputAction: TextInputAction.done,
                                    obscureText: true,
                                    borderDecoration: TextFormFieldStyleHelper
                                        .fillBlueGrayTL33,
                                    fillColor: appTheme.blueGray100);
                              }),
                          SizedBox(height: 43.v),
                          CustomElevatedButton(
                              height: 64.v,
                              text: "lbl_update".tr,
                              margin: EdgeInsets.only(left: 28.h, right: 29.h),
                              buttonTextStyle:
                                  CustomTextStyles.displayMediumKatibehBlack900,
                              onPressed: () {
                                onTapUpdate(context);
                              })
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
  onTapUpdate(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }
}
