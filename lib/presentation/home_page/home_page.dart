import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/widgets/app_bar/appbar_title_image.dart';
import 'package:saraag_s_happymart/widgets/app_bar/appbar_trailing_image.dart';
import 'package:saraag_s_happymart/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
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
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 17.v),
              _buildSearchBar(context),
              SizedBox(height: 27.v),
              CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 18.v,
                width: 94.h,
                margin: EdgeInsets.only(left: 11.h),
              ),
              SizedBox(height: 8.v),
              _buildProductSection(context),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "Trending products",
                  style: CustomTextStyles.headlineSmallBold,
                ),
              ),
              SizedBox(height: 21.v),
              _buildTrendingProductsSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgWelcomeBackUser,
        margin: EdgeInsets.only(left: 23.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconBellDot,
          margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 4.h,
        right: 13.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 5.v,
              bottom: 3.v,
            ),
            child: Text(
              "SEARCH ",
              style: theme.textTheme.titleLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRewind,
            height: 33.v,
            width: 35.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          left: 10.h,
          right: 19.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.outlinePrimary2.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 146.v,
              width: 159.h,
              margin: EdgeInsets.only(top: 5.v),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCoca1,
                    height: 146.v,
                    width: 159.h,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCoca1Stroke,
                    height: 146.v,
                    width: 159.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 22.h,
                top: 27.v,
                bottom: 16.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSoftDrinks,
                    height: 16.v,
                    width: 130.h,
                  ),
                  SizedBox(height: 11.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgFlat50Off,
                    height: 18.v,
                    width: 159.h,
                  ),
                  SizedBox(height: 9.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgOnBeverages,
                    height: 15.v,
                    width: 118.h,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 15.h),
                  ),
                  SizedBox(height: 13.v),
                  Container(
                    height: 23.v,
                    width: 89.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.fillRedA,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsOnsecondarycontainer,
                      height: 8.v,
                      width: 80.h,
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrendingProductsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 26.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSlice1,
                height: 154.v,
                width: 151.h,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 5.h),
              ),
              SizedBox(height: 15.v),
              SizedBox(
                width: 131.h,
                child: Text(
                  "Slice Mango\nDrink(1000ml)",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCarrot1,
                height: 161.v,
                width: 178.h,
              ),
            ],
          ),
          Container(
            height: 367.v,
            width: 176.h,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 6.v,
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgApple2,
                  height: 161.v,
                  width: 165.h,
                  alignment: Alignment.topLeft,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 128.h,
                    margin: EdgeInsets.only(right: 14.h),
                    child: Text(
                      "Kashmeri \nApple(1000g)",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img61d9oedgssl1,
                  height: 161.v,
                  width: 169.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
