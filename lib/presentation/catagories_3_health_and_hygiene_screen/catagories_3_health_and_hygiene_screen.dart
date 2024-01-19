import '../catagories_3_health_and_hygiene_screen/widgets/userprofilesection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/presentation/catagories_2_beverages_page/catagories_2_beverages_page.dart';
import 'package:saraag_s_happymart/presentation/home_page/home_page.dart';
import 'package:saraag_s_happymart/widgets/custom_bottom_bar.dart';
import 'package:saraag_s_happymart/widgets/custom_elevated_button.dart';

class Catagories3HealthAndHygieneScreen extends StatelessWidget {
  Catagories3HealthAndHygieneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 810.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 12.h,
                    right: 234.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 41.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 83.v),
                      Text(
                        "Savlon",
                        style: CustomTextStyles.titleLargeLight,
                      ),
                      SizedBox(height: 2.v),
                      SizedBox(
                        width: 141.h,
                        child: Text(
                          "Antiseptic \nDisinfectant Liquid",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Text(
                        "87",
                        style: theme.textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 207.h,
                    right: 39.h,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 29.v),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 95.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text(
                            "Whisper",
                            style: CustomTextStyles.titleLargeLight,
                          ),
                        ),
                      ),
                      Container(
                        width: 151.h,
                        margin: EdgeInsets.only(
                          left: 24.h,
                          right: 9.h,
                        ),
                        child: Text(
                          "Ultra Clean Sanitary\nPads For Women",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.v),
                              child: Text(
                                "613",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            _buildSavlonSection(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildWhisperSection(context),
              CustomImageView(
                imagePath: ImageConstant.img61o5c4jhztl1,
                height: 197.v,
                width: 195.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  left: 11.h,
                  bottom: 146.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img719uzR29zl1,
                height: 190.v,
                width: 148.h,
                radius: BorderRadius.circular(
                  37.h,
                ),
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 43.h,
                  bottom: 153.v,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 346.v),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 49.v,
                  width: 45.h,
                  margin: EdgeInsets.only(right: 123.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 51.v,
                  width: 47.h,
                  margin: EdgeInsets.only(right: 120.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "Health and Hygiene",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 875.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 140.v),
                          child: SizedBox(
                            width: double.maxFinite,
                            child: Divider(),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 208.h),
                          child: SizedBox(
                            height: 735.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                            ),
                          ),
                        ),
                      ),
                      _buildUserProfileSection(context),
                    ],
                  ),
                ),
              ),
              _buildADD(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSavlonSection(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "ADD",
      margin: EdgeInsets.only(left: 12.h),
    );
  }

  /// Section Widget
  Widget _buildWhisperSection(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "ADD",
      margin: EdgeInsets.only(
        left: 100.h,
        bottom: 8.v,
      ),
      alignment: Alignment.bottomLeft,
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 875.v,
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: 11.h,
            right: 27.h,
            bottom: 486.v,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 1.h,
            );
          },
          itemCount: 11,
          itemBuilder: (context, index) {
            return UserprofilesectionItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAndroidLargeSection(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "ADD",
      margin: EdgeInsets.only(left: 18.h),
    );
  }

  /// Section Widget
  Widget _buildAndroidLargeSection1(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "ADD",
      margin: EdgeInsets.only(left: 9.h),
    );
  }

  /// Section Widget
  Widget _buildADD(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.fromLTRB(23.h, 380.v, 48.h, 380.v),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 10.v,
                bottom: 14.v,
              ),
              child: Text(
                "235",
                style: theme.textTheme.titleLarge,
              ),
            ),
            _buildAndroidLargeSection(context),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 10.v,
                bottom: 14.v,
              ),
              child: Text(
                "280",
                style: theme.textTheme.titleLarge,
              ),
            ),
            _buildAndroidLargeSection1(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
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
