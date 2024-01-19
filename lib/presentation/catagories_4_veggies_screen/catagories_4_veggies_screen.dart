import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/presentation/catagories_2_beverages_page/catagories_2_beverages_page.dart';
import 'package:saraag_s_happymart/presentation/home_page/home_page.dart';
import 'package:saraag_s_happymart/widgets/custom_bottom_bar.dart';
import 'package:saraag_s_happymart/widgets/custom_elevated_button.dart';

class Catagories4VeggiesScreen extends StatelessWidget {
  Catagories4VeggiesScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "Fruits & Vegetables",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              _buildCutFreshOne(context),
              SizedBox(height: 13.v),
              Divider(),
              SizedBox(height: 8.v),
              _buildTamotaOne(context),
              SizedBox(height: 15.v),
              _buildADD2(context),
              SizedBox(height: 13.v),
              _buildAppleOne(context),
              SizedBox(height: 14.v),
              _buildADD5(context),
              SizedBox(height: 7.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildCutFreshOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCutFresh1,
                height: 65.v,
                width: 66.h,
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 82.h,
                child: Text(
                  "Freshly \ncut &sprout",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFreshVeg1,
                  height: 65.v,
                  width: 66.h,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 79.h,
                  child: Text(
                    "Fresh \nVegetables",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              bottom: 2.v,
            ),
            child: _buildEightyFive(
              context,
              dynamicImage: ImageConstant.imgFreshBfruits1,
              exotics: "Fresh \nFruits",
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 15.v),
            child: _buildEightyFive(
              context,
              dynamicImage: ImageConstant.imgExotic1,
              exotics: "Exotics",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTamotaOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTamota1,
                  height: 130.v,
                  width: 173.h,
                ),
                SizedBox(height: 11.v),
                Container(
                  width: 118.h,
                  margin: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "Desi Tomato\n(750 g)",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 207.v,
            width: 174.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPotato1,
                  height: 162.v,
                  width: 174.h,
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 63.h,
                    margin: EdgeInsets.only(left: 9.h),
                    child: Text(
                      "Potato\n(300g)",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildADD(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "ADD",
      margin: EdgeInsets.only(
        left: 22.h,
        top: 7.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildADD1(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "ADD",
      margin: EdgeInsets.only(
        left: 13.h,
        bottom: 7.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildADD2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 11.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              bottom: 16.v,
            ),
            child: Text(
              "40",
              style: theme.textTheme.titleLarge,
            ),
          ),
          _buildADD(context),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              bottom: 16.v,
            ),
            child: Text(
              "65",
              style: theme.textTheme.titleLarge,
            ),
          ),
          _buildADD1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAppleOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 22.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgApple2,
                  height: 161.v,
                  width: 165.h,
                ),
                SizedBox(height: 7.v),
                Container(
                  width: 128.h,
                  margin: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "Kashmeri \nApple(1000g)",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCarrot1,
                  height: 161.v,
                  width: 178.h,
                ),
                SizedBox(height: 14.v),
                Container(
                  width: 111.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "Ooty Carrot\n(1000g)",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildADD3(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "ADD",
      margin: EdgeInsets.only(left: 23.h),
    );
  }

  /// Section Widget
  Widget _buildADD4(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "ADD",
      margin: EdgeInsets.only(left: 19.h),
    );
  }

  /// Section Widget
  Widget _buildADD5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              bottom: 8.v,
            ),
            child: Text(
              "25",
              style: theme.textTheme.titleLarge,
            ),
          ),
          _buildADD3(context),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              bottom: 8.v,
            ),
            child: Text(
              "68",
              style: theme.textTheme.titleLarge,
            ),
          ),
          _buildADD4(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildEightyFive(
    BuildContext context, {
    required String dynamicImage,
    required String exotics,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: dynamicImage,
          height: 64.v,
          width: 65.h,
        ),
        SizedBox(height: 12.v),
        Text(
          exotics,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.primary.withOpacity(1),
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Shop:
        return AppRoutes.catagories2BeveragesPage;
      case BottomBarEnum.Explore:
        return AppRoutes.homePage;
      case BottomBarEnum.Cart:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.catagories2BeveragesPage:
        return Catagories2BeveragesPage();
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
