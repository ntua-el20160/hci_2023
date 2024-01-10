import '../models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(
    this.userprofilesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilesectionItemModel userprofilesectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 18.v,
              bottom: 17.v,
            ),
            child: Text(
              userprofilesectionItemModelObj.dynamicText!,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          Container(
            height: 72.v,
            width: 54.h,
            margin: EdgeInsets.only(left: 3.h),
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                36.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofilesectionItemModelObj.dynamicText1!,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 1.v),
                Container(
                  height: 31.v,
                  width: 152.h,
                  margin: EdgeInsets.only(left: 2.h),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle47,
                        height: 31.v,
                        width: 152.h,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 22.v,
                                width: 14.h,
                                margin: EdgeInsets.only(top: 3.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text(
                                  userprofilesectionItemModelObj.dynamicText2!,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
