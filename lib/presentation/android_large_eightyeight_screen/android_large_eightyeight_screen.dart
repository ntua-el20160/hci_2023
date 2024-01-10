import 'models/android_large_eightyeight_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/widgets/custom_elevated_button.dart';
import 'package:moodj2/widgets/custom_text_form_field.dart';
import 'provider/android_large_eightyeight_provider.dart';

class AndroidLargeEightyeightScreen extends StatefulWidget {
  const AndroidLargeEightyeightScreen({Key? key}) : super(key: key);

  @override
  AndroidLargeEightyeightScreenState createState() =>
      AndroidLargeEightyeightScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AndroidLargeEightyeightProvider(),
        child: AndroidLargeEightyeightScreen());
  }
}

class AndroidLargeEightyeightScreenState
    extends State<AndroidLargeEightyeightScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray80001,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          height: 489.v,
                          width: 280.h,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 365.v,
                                    width: 241.h,
                                    margin: EdgeInsets.only(left: 8.h),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  width: 241.h,
                                                  child: Text(
                                                      "msg_welcome_to_moodj_please"
                                                          .tr,
                                                      maxLines: 9,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .displayMedium40))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 38.h,
                                                      top: 97.v,
                                                      right: 25.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                            height: 40.v,
                                                            width: 173.h,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .blueGray100,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.h))),
                                                        SizedBox(height: 77.v),
                                                        Selector<
                                                                AndroidLargeEightyeightProvider,
                                                                TextEditingController?>(
                                                            selector: (context,
                                                                    provider) =>
                                                                provider
                                                                    .editTextController,
                                                            builder: (context,
                                                                editTextController,
                                                                child) {
                                                              return CustomTextFormField(
                                                                  controller:
                                                                      editTextController,
                                                                  borderDecoration:
                                                                      TextFormFieldStyleHelper
                                                                          .fillBlueGray,
                                                                  fillColor:
                                                                      appTheme
                                                                          .blueGray100);
                                                            })
                                                      ])))
                                        ]))),
                            Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                    height: 143.v,
                                    width: 244.h,
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage1,
                                              height: 113.v,
                                              width: 160.h,
                                              radius:
                                                  BorderRadius.circular(10.h),
                                              alignment: Alignment.topRight),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("lbl_moodj".tr,
                                                  style: CustomTextStyles
                                                      .justAnotherHandOnPrimaryContainer))
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgQuestion,
                                height: 39.v,
                                width: 36.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 47.v),
                                onTap: () {
                                  onTapImgQuestion(context);
                                })
                          ]))),
                  Selector<AndroidLargeEightyeightProvider,
                          TextEditingController?>(
                      selector: (context, provider) =>
                          provider.editTextController1,
                      builder: (context, editTextController1, child) {
                        return CustomTextFormField(
                            width: 178.h,
                            controller: editTextController1,
                            textInputAction: TextInputAction.done,
                            borderDecoration:
                                TextFormFieldStyleHelper.fillBlueGray,
                            fillColor: appTheme.blueGray100);
                      }),
                  SizedBox(height: 26.v),
                  SizedBox(
                      height: 39.v,
                      width: 178.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle6,
                            height: 39.v,
                            width: 171.h,
                            radius: BorderRadius.circular(19.h),
                            alignment: Alignment.center,
                            onTap: () {
                              onTapImgImage(context);
                            }),
                        CustomElevatedButton(
                            height: 39.v,
                            width: 171.h,
                            text: "lbl_join_moodj".tr,
                            buttonStyle: CustomButtonStyles.outlineBlack,
                            buttonTextStyle: theme.textTheme.headlineLarge!,
                            alignment: Alignment.centerLeft)
                      ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the startPageScreen when the action is triggered.
  onTapImgQuestion(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.startPageScreen,
    );
  }

  /// Navigates to the createJoinTeamScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createJoinTeamScreen,
    );
  }
}
