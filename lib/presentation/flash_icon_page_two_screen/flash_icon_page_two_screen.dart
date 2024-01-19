import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:saraag_s_happymart/widgets/app_bar/custom_app_bar.dart';
import 'package:saraag_s_happymart/widgets/custom_outlined_button.dart';

class FlashIconPageTwoScreen extends StatelessWidget {
  const FlashIconPageTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 44.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup2531Undr,
                      height: 356.v,
                      width: 351.h),
                  SizedBox(height: 38.v),
                  SizedBox(
                      height: 63.v,
                      width: 198.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: 198.h,
                                child: Text("Number Verified Successfully",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .headlineSmallRobotoSerif))),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 63.v,
                                width: 198.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              width: 198.h,
                                              child: Text(
                                                  "Number Verified Successfully",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: CustomTextStyles
                                                      .headlineSmallRobotoSerif))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              width: 198.h,
                                              child: Text(
                                                  "Number Verified Successfully",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: CustomTextStyles
                                                      .headlineSmallRobotoSerif)))
                                    ])))
                      ])),
                  Spacer(flex: 46),
                  CustomOutlinedButton(
                      text: "Home",
                      buttonTextStyle: CustomTextStyles.headlineSmallRosario_1,
                      onPressed: () {
                        onTapHome(context);
                      }),
                  Spacer(flex: 53)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 55.v,
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Verified"));
  }

  /// Navigates to the categoriespaigeScreen when the action is triggered.
  onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.categoriespaigeScreen);
  }
}
