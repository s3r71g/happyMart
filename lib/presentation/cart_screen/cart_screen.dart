import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/widgets/app_bar/custom_app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onSecondaryContainer,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgCart897x430),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 18.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Spacer(),
                      SizedBox(height: 36.v),
                      GestureDetector(
                          onTap: () {
                            onTapView1(context);
                          },
                          child: Container(
                              height: 84.v,
                              width: 410.h,
                              decoration: BoxDecoration(
                                  color:
                                      theme.colorScheme.onSecondaryContainer)))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: GestureDetector(
            onTap: () {
              onTapView(context);
            },
            child: Container(
                height: 40.v,
                width: 41.h,
                margin: EdgeInsets.only(left: 12.h),
                decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(20.h)))));
  }

  /// Navigates to the catagories4VeggiesScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.catagories4VeggiesScreen);
  }

  /// Navigates to the upiCheckoutScreen when the action is triggered.
  onTapView1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.upiCheckoutScreen);
  }
}
