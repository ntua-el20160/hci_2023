import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'provider/start_page_provider.dart';

class StartPageScreen extends StatefulWidget {
  const StartPageScreen({Key? key}) : super(key: key);

  @override
  StartPageScreenState createState() => StartPageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => StartPageProvider(), child: StartPageScreen());
  }
}

class StartPageScreenState extends State<StartPageScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.logInScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgAndroidLarge,
                      height: 423.v,
                      width: 340.h,
                      alignment: Alignment.topRight),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.h, vertical: 54.v),
                          decoration: AppDecoration.outlineBlack,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 52.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              height: 147.v,
                                              width: 264.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage1,
                                                        height: 133.v,
                                                        width: 173.h,
                                                        radius: BorderRadius
                                                            .circular(10.h),
                                                        alignment:
                                                            Alignment.topRight),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                            "lbl_moodj".tr,
                                                            style: CustomTextStyles
                                                                .justAnotherHandOnPrimaryContainer))
                                                  ])),
                                          Container(
                                              height: 1.adaptSize,
                                              width: 1.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 4.h,
                                                  top: 46.v,
                                                  bottom: 100.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.blueGray100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.h)))
                                        ]))),
                            SizedBox(height: 58.v),
                            SizedBox(
                                height: 58.v,
                                width: 248.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapView(context);
                                              },
                                              child: Container(
                                                  height: 53.v,
                                                  width: 248.h,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          appTheme.blueGray100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              26.h))))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("lbl_log_in".tr,
                                              style: CustomTextStyles
                                                  .displayMediumBlack900))
                                    ])),
                            SizedBox(height: 33.v),
                            SizedBox(
                                height: 59.v,
                                width: 248.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapView1(context);
                                              },
                                              child: Container(
                                                  height: 56.v,
                                                  width: 248.h,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          appTheme.blueGray100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              28.h))))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("lbl_sign_up".tr,
                                              style: CustomTextStyles
                                                  .displayMediumBlack900))
                                    ])),
                            SizedBox(height: 33.v)
                          ])))
                ]))));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }

  /// Navigates to the androidLargeEightyeightScreen when the action is triggered.
  onTapView1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeEightyeightScreen,
    );
  }
}
