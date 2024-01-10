import 'models/create_join_team_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'provider/create_join_team_provider.dart';

class CreateJoinTeamScreen extends StatefulWidget {
  const CreateJoinTeamScreen({Key? key}) : super(key: key);

  @override
  CreateJoinTeamScreenState createState() => CreateJoinTeamScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CreateJoinTeamProvider(),
        child: CreateJoinTeamScreen());
  }
}

class CreateJoinTeamScreenState extends State<CreateJoinTeamScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray80001,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 47.h, vertical: 24.v),
                child: Column(children: [
                  SizedBox(
                      height: 147.v,
                      width: 264.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage1,
                            height: 133.v,
                            width: 173.h,
                            radius: BorderRadius.circular(10.h),
                            alignment: Alignment.topRight),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("lbl_moodj".tr,
                                style: CustomTextStyles
                                    .justAnotherHandOnPrimaryContainer))
                      ])),
                  SizedBox(height: 18.v),
                  Text("msg_insert_team_code".tr,
                      style: theme.textTheme.displayMedium),
                  SizedBox(height: 25.v),
                  Container(
                      height: 54.v,
                      width: 169.h,
                      decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                          borderRadius: BorderRadius.circular(27.h))),
                  SizedBox(height: 26.v),
                  GestureDetector(
                      onTap: () {
                        onTapComponentFifteen(context);
                      },
                      child: SizedBox(
                          height: 40.v,
                          width: 141.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 39.v,
                                    width: 141.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.blue800Cc,
                                        borderRadius:
                                            BorderRadius.circular(19.h),
                                        boxShadow: [
                                          BoxShadow(
                                              color: appTheme.black900
                                                  .withOpacity(0.25),
                                              spreadRadius: 2.h,
                                              blurRadius: 2.h,
                                              offset: Offset(0, 4))
                                        ]))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 19.h),
                                    child: Text("lbl_join_team".tr,
                                        style: theme.textTheme.headlineMedium)))
                          ]))),
                  SizedBox(height: 21.v),
                  Text("msg_or_create_a_new".tr,
                      style: theme.textTheme.displayMedium),
                  SizedBox(height: 8.v),
                  GestureDetector(
                      onTap: () {
                        onTapComponentFifteen1(context);
                      },
                      child: SizedBox(
                          height: 40.v,
                          width: 141.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 39.v,
                                    width: 141.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.blue800Cc,
                                        borderRadius:
                                            BorderRadius.circular(19.h),
                                        boxShadow: [
                                          BoxShadow(
                                              color: appTheme.black900
                                                  .withOpacity(0.25),
                                              spreadRadius: 2.h,
                                              blurRadius: 2.h,
                                              offset: Offset(0, 4))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Text("lbl_create_team".tr,
                                    style: theme.textTheme.headlineMedium))
                          ]))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the feedHomeScreen when the action is triggered.
  onTapComponentFifteen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.feedHomeScreen,
    );
  }

  /// Navigates to the feedHomeScreen when the action is triggered.
  onTapComponentFifteen1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.feedHomeScreen,
    );
  }
}
