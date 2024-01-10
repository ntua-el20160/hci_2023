import 'models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/widgets/custom_elevated_button.dart';
import 'package:moodj2/widgets/custom_text_form_field.dart';
import 'provider/log_in_provider.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  LogInScreenState createState() => LogInScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LogInProvider(), child: LogInScreen());
  }
}

class LogInScreenState extends State<LogInScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.v),
                child: Column(children: [
                  _buildQuestionRow(context),
                  SizedBox(height: 27.v),
                  Text("lbl_username".tr, style: theme.textTheme.displayMedium),
                  SizedBox(height: 13.v),
                  Selector<LogInProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.editTextController,
                      builder: (context, editTextController, child) {
                        return CustomTextFormField(
                            width: 155.h,
                            controller: editTextController,
                            borderDecoration:
                                TextFormFieldStyleHelper.fillBlueGrayTL26,
                            fillColor: appTheme.blueGray100);
                      }),
                  SizedBox(height: 32.v),
                  Text("lbl_password".tr, style: theme.textTheme.displayMedium),
                  SizedBox(height: 8.v),
                  Selector<LogInProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.editTextController1,
                      builder: (context, editTextController1, child) {
                        return CustomTextFormField(
                            width: 155.h,
                            controller: editTextController1,
                            textInputAction: TextInputAction.done,
                            borderDecoration:
                                TextFormFieldStyleHelper.fillBlueGrayTL26,
                            fillColor: appTheme.blueGray100);
                      }),
                  SizedBox(height: 52.v),
                  CustomElevatedButton(
                      height: 39.v,
                      width: 79.h,
                      text: "lbl_login2".tr,
                      buttonStyle: CustomButtonStyles.outlineBlack,
                      buttonTextStyle: theme.textTheme.headlineLarge!,
                      onPressed: () {
                        onTapLogin(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildQuestionRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgQuestion,
                      height: 39.v,
                      width: 36.h,
                      margin: EdgeInsets.only(top: 40.v, bottom: 68.v),
                      onTap: () {
                        onTapImgQuestion(context);
                      }),
                  Container(
                      height: 147.v,
                      width: 264.h,
                      margin: EdgeInsets.only(left: 13.h),
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
                      ]))
                ])));
  }

  /// Navigates to the startPageScreen when the action is triggered.
  onTapImgQuestion(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.startPageScreen,
    );
  }

  /// Navigates to the createJoinTeamScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createJoinTeamScreen,
    );
  }
}
