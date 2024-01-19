import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:saraag_s_happymart/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:saraag_s_happymart/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:saraag_s_happymart/widgets/app_bar/appbar_title_image.dart';
import 'package:saraag_s_happymart/widgets/app_bar/custom_app_bar.dart';
import 'package:saraag_s_happymart/widgets/custom_elevated_button.dart';
import 'package:saraag_s_happymart/widgets/custom_icon_button.dart';

class UpiCheckoutScreen extends StatelessWidget {
  const UpiCheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTwentyThree(context),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: AnotherStepper(
                              iconHeight: 25,
                              iconWidth: 25,
                              stepperDirection: Axis.horizontal,
                              activeIndex: 1,
                              barThickness: 1,
                              activeBarColor: appTheme.deepPurpleA10002,
                              inverted: true,
                              stepperList: [
                                StepperData(
                                    iconWidget: Container(
                                        height: 25.adaptSize,
                                        width: 25.adaptSize,
                                        padding: EdgeInsets.all(3.h),
                                        decoration: AppDecoration
                                            .outlineDeepPurpleA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCharmTick,
                                            height: 17.adaptSize,
                                            width: 17.adaptSize,
                                            alignment: Alignment.center)),
                                    title: StepperText("Address",
                                        textStyle: CustomTextStyles
                                            .bodySmallMontserratPrimaryLight)),
                                StepperData(
                                    iconWidget: Container(
                                        height: 25.adaptSize,
                                        width: 25.adaptSize,
                                        padding: EdgeInsets.all(3.h),
                                        decoration: AppDecoration
                                            .outlineDeepPurpleA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCharmTick,
                                            height: 17.adaptSize,
                                            width: 17.adaptSize,
                                            alignment: Alignment.center)),
                                    title: StepperText("Order Summary",
                                        textStyle: CustomTextStyles
                                            .bodySmallMontserratPrimaryLight))
                              ])),
                      SizedBox(height: 10.v),
                      Container(
                          margin: EdgeInsets.only(right: 11.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 17.h, vertical: 7.v),
                          decoration: AppDecoration.fillGray10001,
                          child: Column(children: [
                            SizedBox(height: 9.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text("Preferred Mode",
                                        style: theme.textTheme.titleMedium))),
                            SizedBox(height: 17.v),
                            _buildThirtyThree(context),
                            SizedBox(height: 17.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text("UPI",
                                        style: theme.textTheme.titleMedium))),
                            SizedBox(height: 16.v),
                            _buildThirtyFour(context),
                            SizedBox(height: 56.v),
                            SizedBox(
                                width: 179.h,
                                child:
                                    Divider(color: theme.colorScheme.onPrimary))
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 54.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 17.h, right: 91.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgEvaArrowBackOutline,
                    margin: EdgeInsets.only(top: 10.v, bottom: 4.v),
                    onTap: () {
                      onTapEvaArrowBackOutline(context);
                    }),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(children: [
                      AppbarSubtitleTwo(
                          text: "Payments",
                          margin: EdgeInsets.only(right: 182.h)),
                      SizedBox(height: 1.v),
                      Row(children: [
                        AppbarSubtitleSix(
                            text: "5 items",
                            margin: EdgeInsets.only(bottom: 1.v)),
                        AppbarSubtitleSix(
                            text: ".",
                            margin: EdgeInsets.only(left: 4.h, top: 1.v)),
                        AppbarSubtitleSix(
                            text: "Total Amount: ₹299",
                            margin: EdgeInsets.only(left: 3.h, bottom: 1.v)),
                        AppbarSubtitleFive(
                            text: ".",
                            margin: EdgeInsets.only(left: 5.h, top: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h, top: 1.v),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Savings: ",
                                      style: theme.textTheme.labelLarge),
                                  TextSpan(
                                      text: "₹99",
                                      style: CustomTextStyles
                                          .bodySmallMontserratff1ca672)
                                ]),
                                textAlign: TextAlign.left))
                      ])
                    ]))
              ])),
          SizedBox(height: 9.v),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  width: 418.h, child: Divider(color: appTheme.gray200)))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h, right: 35.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgCarbonLocationCurrent,
              height: 25.adaptSize,
              width: 25.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 4.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: "Home ", style: theme.textTheme.titleSmall),
                    TextSpan(
                        text: "|", style: CustomTextStyles.titleSmallff8f8f8f),
                    TextSpan(text: " "),
                    TextSpan(
                        text: " Bachupally, Hyderabad, Kousalya Colo...",
                        style: CustomTextStyles.bodyMediumMontserratff8f8f8f)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Section Widget
  Widget _buildThirtyThree(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapThirtyThree(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 17.v),
            decoration: AppDecoration.outlinePrimary4
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 149.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomIconButton(
                                      height: 42.adaptSize,
                                      width: 42.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgGroup26)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 12.v, bottom: 9.v),
                                      child: Text("Google Pay",
                                          style: theme.textTheme.titleMedium))
                                ])),
                        Padding(
                            padding: EdgeInsets.only(top: 8.v, bottom: 12.v),
                            child: CustomIconButton(
                                height: 21.adaptSize,
                                width: 21.adaptSize,
                                padding: EdgeInsets.all(3.h),
                                decoration:
                                    IconButtonStyleHelper.outlineDeepPurpleA,
                                child: CustomImageView(
                                    imagePath: ImageConstant
                                        .imgCharmTickOnsecondarycontainer)))
                      ])),
              SizedBox(height: 8.v),
              CustomElevatedButton(
                  height: 46.v,
                  text: "Pay using Google Pay",
                  margin: EdgeInsets.only(left: 72.h, right: 17.h),
                  buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                  buttonTextStyle:
                      CustomTextStyles.titleSmallOnSecondaryContainer,
                  alignment: Alignment.centerRight),
              SizedBox(height: 17.v),
              Divider(color: appTheme.gray200),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              SizedBox(
                                  height: 42.adaptSize,
                                  width: 42.adaptSize,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage5,
                                            height: 21.v,
                                            width: 42.h,
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgThumbsUp,
                                            height: 42.adaptSize,
                                            width: 42.adaptSize,
                                            alignment: Alignment.center)
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 12.h, top: 12.v, bottom: 8.v),
                                  child: Text("Paytm",
                                      style: theme.textTheme.titleMedium)),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 11.v),
                                  child: Text("₹200",
                                      style: CustomTextStyles
                                          .bodyMediumMontserratGray50001))
                            ])),
                        Container(
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            margin: EdgeInsets.only(
                                left: 14.h, top: 9.v, bottom: 11.v),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.h),
                                border: Border.all(
                                    color: appTheme.blueGray100, width: 1.h)))
                      ])),
              SizedBox(height: 17.v),
              Divider(color: appTheme.gray200),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 209.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      height: 42.v,
                                      width: 95.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage6,
                                                height: 26.v,
                                                width: 34.h,
                                                alignment: Alignment.centerLeft,
                                                margin:
                                                    EdgeInsets.only(left: 4.h)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgThumbsUp,
                                                          height: 42.adaptSize,
                                                          width: 42.adaptSize),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 12.h),
                                                          child: Text(".",
                                                              style: theme
                                                                  .textTheme
                                                                  .displaySmall)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h),
                                                          child: Text(".",
                                                              style: theme
                                                                  .textTheme
                                                                  .displaySmall)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h),
                                                          child: Text(".",
                                                              style: theme
                                                                  .textTheme
                                                                  .displaySmall)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h),
                                                          child: Text(".",
                                                              style: theme
                                                                  .textTheme
                                                                  .displaySmall))
                                                    ]))
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 11.v, bottom: 3.v),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 6.v),
                                                child: Text("9999",
                                                    style: theme.textTheme
                                                        .titleMedium)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                          width: 61.h,
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      9.h,
                                                                  vertical:
                                                                      2.v),
                                                          decoration: AppDecoration
                                                              .fillDeepPurple
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder2),
                                                          child: Text("Secured",
                                                              style: CustomTextStyles
                                                                  .labelSmallMontserratDeeppurpleA10002)),
                                                      SizedBox(height: 2.v),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgGroupDeepPurpleA10002,
                                                          height: 6.v,
                                                          width: 5.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 13.h))
                                                    ]))
                                          ]))
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgContrast,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 10.v))
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildThirtyFour(BuildContext context) {
    return SizedBox(
        height: 229.v,
        width: 384.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 71.h, top: 49.v),
                  child: Text("Order Summary",
                      style:
                          CustomTextStyles.bodySmallMontserratPrimaryLight))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 17.v),
                  decoration: AppDecoration.outlinePrimary4.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 42.v,
                                  width: 215.h,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                      height: 42.adaptSize,
                                                      width: 42.adaptSize,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgThumbsUp,
                                                                height: 42
                                                                    .adaptSize,
                                                                width: 42
                                                                    .adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage7,
                                                                height: 29
                                                                    .adaptSize,
                                                                width: 29
                                                                    .adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 12.h,
                                                          bottom: 21.v),
                                                      child: Text("PhonePe UPI",
                                                          style: theme.textTheme
                                                              .titleMedium))
                                                ])),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Text(
                                                    "Low success rate currently",
                                                    style: CustomTextStyles
                                                        .bodySmallMontserratPrimary)))
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 21.adaptSize,
                                  width: 21.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 8.v, bottom: 12.v))
                            ])),
                    SizedBox(height: 17.v),
                    Divider(color: appTheme.gray200),
                    SizedBox(height: 15.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: 42.adaptSize,
                                  width: 42.adaptSize,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgThumbsUp,
                                            height: 42.adaptSize,
                                            width: 42.adaptSize,
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage8,
                                            height: 23.v,
                                            width: 30.h,
                                            alignment: Alignment.center)
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 12.h, top: 10.v, bottom: 10.v),
                                  child: Text("Mobikwik",
                                      style: theme.textTheme.titleMedium)),
                              Spacer(),
                              CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 21.adaptSize,
                                  width: 21.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 8.v, bottom: 10.v))
                            ])),
                    SizedBox(height: 17.v),
                    Divider(color: appTheme.gray200),
                    SizedBox(height: 15.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 139.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                            height: 42.adaptSize,
                                            width: 42.adaptSize,
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgThumbsUp,
                                                      height: 42.adaptSize,
                                                      width: 42.adaptSize,
                                                      alignment:
                                                          Alignment.center),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage9,
                                                      height: 24.v,
                                                      width: 25.h,
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      margin: EdgeInsets.only(
                                                          left: 7.h))
                                                ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 12.v, bottom: 8.v),
                                            child: Text("CRED pay",
                                                style: theme
                                                    .textTheme.titleMedium))
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 21.adaptSize,
                                  width: 21.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 8.v, bottom: 12.v))
                            ]))
                  ])))
        ]));
  }

  /// Navigates to the cartScreen when the action is triggered.
  onTapEvaArrowBackOutline(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreen);
  }

  /// Navigates to the iphone14ProMaxTwoScreen when the action is triggered.
  onTapThirtyThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwoScreen);
  }
}
