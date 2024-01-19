import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/widgets/custom_outlined_button.dart';

class FlashIconPageScreen extends StatelessWidget {
  const FlashIconPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 47.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgTransitionwipe,
                      height: 232.v,
                      width: 213.h,
                      radius: BorderRadius.circular(60.h)),
                  SizedBox(height: 26.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          margin: EdgeInsets.only(right: 27.h),
                          decoration: AppDecoration.outlinePrimary,
                          child: Text("FLASH CART",
                              style:
                                  CustomTextStyles.displayMediumIndigoA200))),
                  Spacer(flex: 60),
                  CustomOutlinedButton(
                      text: "Enter Phone Number",
                      margin: EdgeInsets.only(left: 8.h),
                      buttonStyle: CustomButtonStyles.outlinePrimary),
                  SizedBox(height: 50.v),
                  CustomOutlinedButton(
                      text: "Get OTP",
                      margin: EdgeInsets.only(left: 8.h),
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgArrowrightsolid131flashiconpage,
                              height: 34.v,
                              width: 44.h)),
                      onPressed: () {
                        onTapGetOTP(context);
                      }),
                  Spacer(flex: 39)
                ]))));
  }

  /// Navigates to the flashIconPageOneScreen when the action is triggered.
  onTapGetOTP(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.flashIconPageOneScreen);
  }
}
