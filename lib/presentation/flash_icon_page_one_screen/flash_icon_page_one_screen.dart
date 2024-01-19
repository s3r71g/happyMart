import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/widgets/custom_outlined_button.dart';
import 'package:saraag_s_happymart/widgets/custom_pin_code_text_field.dart';

class FlashIconPageOneScreen extends StatelessWidget {
  const FlashIconPageOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
                child: Column(children: [
                  _buildBubbleGumOtpSection(context),
                  Padding(
                      padding: EdgeInsets.only(left: 22.h, right: 20.h),
                      child: CustomPinCodeTextField(
                          context: context, onChanged: (value) {})),
                  SizedBox(height: 45.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 345.h,
                          margin: EdgeInsets.only(left: 21.h, right: 33.h),
                          child: Text(
                              "OTP has been sent to the entered mobile number",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  CustomTextStyles.titleLargeRosarioSemiBold))),
                  SizedBox(height: 20.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Didn’t receive? ",
                            style: CustomTextStyles.titleLargeRosarioff000000),
                        TextSpan(
                            text: "Resend ",
                            style: CustomTextStyles.titleLargeRosariofffd0a0a)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 35.v),
                  CustomOutlinedButton(
                      text: "Verify",
                      margin: EdgeInsets.only(left: 35.h, right: 13.h),
                      buttonTextStyle: CustomTextStyles.headlineSmallRosario_1,
                      onPressed: () {
                        onTapVerify(context);
                      },
                      alignment: Alignment.centerRight),
                  SizedBox(height: 2.v),
                  Text("Verify OTP",
                      style: CustomTextStyles
                          .titleLargeRosarioOnSecondaryContainer),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildBubbleGumOtpSection(BuildContext context) {
    return SizedBox(
        height: 415.v,
        width: 400.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBubbleGumOtp,
              height: 400.adaptSize,
              width: 400.adaptSize,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 35.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 24.v,
                            width: 14.h,
                            margin: EdgeInsets.only(bottom: 6.v),
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 128.h),
                            child: Text("OTP",
                                style: CustomTextStyles.headlineSmallRosario))
                      ])))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the flashIconPageTwoScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.flashIconPageTwoScreen);
  }
}
