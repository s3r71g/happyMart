import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/presentation/catagories_2_beverages_page/catagories_2_beverages_page.dart';
import 'package:saraag_s_happymart/presentation/home_page/home_page.dart';
import 'package:saraag_s_happymart/widgets/app_bar/custom_app_bar.dart';
import 'package:saraag_s_happymart/widgets/custom_bottom_bar.dart';
import 'package:saraag_s_happymart/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CategoriespaigeScreen extends StatelessWidget {
  CategoriespaigeScreen({Key? key}) : super(key: key);

  TextEditingController hygienevalueController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 897.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgCategory,
                      height: 897.v,
                      width: 429.h,
                      radius: BorderRadius.circular(42.h),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 897.v, width: 429.h),
                        _buildAppBar(context),
                        Spacer()
                      ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Column(children: [
      CustomAppBar(
          height: 52.v,
          title: Container(
              height: 52.v,
              width: 65.h,
              margin: EdgeInsets.only(left: 6.h),
              decoration: BoxDecoration(
                  color: theme.colorScheme.onSecondaryContainer))),
      SizedBox(height: 50.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 38.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      onTapView(context);
                    },
                    child: Container(
                        height: 73.v,
                        width: 76.h,
                        margin: EdgeInsets.only(bottom: 167.v),
                        decoration: BoxDecoration(
                            color: appTheme.blueGray10001,
                            borderRadius: BorderRadius.circular(38.h)))),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 208.h,
                          margin: EdgeInsets.only(right: 8.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapView1(context);
                                    },
                                    child: Container(
                                        height: 73.v,
                                        width: 76.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray10001,
                                            borderRadius:
                                                BorderRadius.circular(38.h)))),
                                GestureDetector(
                                    onTap: () {
                                      onTapView2(context);
                                    },
                                    child: Container(
                                        height: 73.v,
                                        width: 76.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray10001,
                                            borderRadius:
                                                BorderRadius.circular(38.h))))
                              ]))),
                  SizedBox(height: 68.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgMobile,
                      height: 73.v,
                      width: 76.h,
                      margin: EdgeInsets.only(right: 5.h),
                      onTap: () {
                        onTapImgMobile(context);
                      }),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                      width: 77.h,
                      controller: hygienevalueController,
                      hintText: "Hygiene",
                      hintStyle: CustomTextStyles.bodySmallInterPrimary,
                      textInputAction: TextInputAction.done)
                ])
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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

  /// Navigates to the catagories4VeggiesScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.catagories4VeggiesScreen);
  }

  /// Navigates to the catagories4VeggiesScreen when the action is triggered.
  onTapView1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.catagories4VeggiesScreen);
  }

  /// Navigates to the catagories2BeveragesContainerScreen when the action is triggered.
  onTapView2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.catagories2BeveragesContainerScreen);
  }

  /// Navigates to the catagories3HealthAndHygieneScreen when the action is triggered.
  onTapImgMobile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.catagories3HealthAndHygieneScreen);
  }
}
