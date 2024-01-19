import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/widgets/app_bar/appbar_leading_image.dart';
import 'package:saraag_s_happymart/widgets/app_bar/appbar_subtitle.dart';
import 'package:saraag_s_happymart/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:saraag_s_happymart/widgets/app_bar/custom_app_bar.dart';

class Catagories1HealthAndHygieneScreen extends StatelessWidget {
  const Catagories1HealthAndHygieneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 18.v,
          ),
          child: Column(
            children: [
              _buildViewRow(context),
              SizedBox(height: 10.v),
              _buildDettolCompetitorsRow(context),
              SizedBox(height: 19.v),
              _buildNinetySixRow(context),
              SizedBox(height: 9.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildArrowLeftRow(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 90.v,
      leadingWidth: 30.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 10.h,
          top: 25.v,
          bottom: 62.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "Shop by category",
              margin: EdgeInsets.only(right: 62.h),
            ),
            AppbarSubtitleThree(
              text: "The more you buy, the less it costs",
            ),
          ],
        ),
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildViewRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: AppDecoration.fillGray40003.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 176.v,
                  width: 195.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 170.v,
                          width: 195.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray40001,
                            borderRadius: BorderRadius.circular(
                              15.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUntitled21,
                        height: 175.v,
                        width: 195.h,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
                Container(
                  width: 117.h,
                  margin: EdgeInsets.only(left: 13.h),
                  child: Text(
                    "Fresh Fruits\nand Vegetables",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 8.v),
              ],
            ),
          ),
          SizedBox(
            height: 228.v,
            width: 195.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 31.v,
                    ),
                    decoration: AppDecoration.fillGray40003.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 142.v),
                        Text(
                          "Drinks and Beverages",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 169.v,
                    width: 195.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray40001,
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgAdobestock2796,
                  height: 175.v,
                  width: 195.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDettolCompetitorsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 230.v,
            width: 195.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDettolCompetitors,
                  height: 189.v,
                  width: 195.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 223.v,
                    width: 195.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 18.v,
                            ),
                            decoration: AppDecoration.fillGray40003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 162.v),
                                Text(
                                  "Health and Hygiene",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 170.v,
                            width: 195.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray40001,
                              borderRadius: BorderRadius.circular(
                                15.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 9.v),
            decoration: AppDecoration.fillGray40003.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 173.v,
                  width: 195.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 170.v,
                          width: 195.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray40001,
                            borderRadius: BorderRadius.circular(
                              15.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgShutterstock472568125,
                        height: 172.v,
                        width: 195.h,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "Meat and Seafood",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 19.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetySixRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              right: 9.h,
            ),
            child: _buildBeautyAndGroomingColumn(
              context,
              userImage: ImageConstant.imgDollarsAndSenseCleaning,
              beautyAndGrooming: "Cleaning Essentials",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: _buildBeautyAndGroomingColumn(
              context,
              userImage: ImageConstant.imgFlipkartBeauty,
              beautyAndGrooming: "Beauty and Grooming",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 44.h,
        right: 46.h,
        bottom: 30.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            height: 20.v,
            width: 10.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 20.v,
            width: 10.h,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildBeautyAndGroomingColumn(
    BuildContext context, {
    required String userImage,
    required String beautyAndGrooming,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          decoration: AppDecoration.fillGray40003.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170.v,
                width: 195.h,
                decoration: AppDecoration.fillGray40001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: CustomImageView(
                  imagePath: userImage,
                  height: 170.v,
                  width: 195.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  beautyAndGrooming,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.primary.withOpacity(1),
                  ),
                ),
              ),
              SizedBox(height: 18.v),
            ],
          ),
        ),
      ),
    );
  }
}
