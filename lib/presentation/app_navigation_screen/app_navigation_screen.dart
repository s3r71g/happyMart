import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "flash/CircleIcon",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.flashCircleiconScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "flash/icon pageFILL",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.flashIconPagefillScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "flash/icon page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.flashIconPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "flash/icon page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.flashIconPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "flash/icon page Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.flashIconPageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CategoriesPaige",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.categoriespaigeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "catagories 2-beverages - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.catagories2BeveragesContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "UPI Checkout",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.upiCheckoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CART",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "catagories 3-Health and Hygiene",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.catagories3HealthAndHygieneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "catagories 4-veggies",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.catagories4VeggiesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "catagories 1 -health and hygiene",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.catagories1HealthAndHygieneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "flash/CircleIcon One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.flashCircleiconOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "explore",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.exploreScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "welcome",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
