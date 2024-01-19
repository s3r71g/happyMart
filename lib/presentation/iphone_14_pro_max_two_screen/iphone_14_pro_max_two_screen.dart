import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/widgets/custom_elevated_button.dart';

class Iphone14ProMaxTwoScreen extends StatelessWidget {
  const Iphone14ProMaxTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 885.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          _buildPriceSection(context),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 22.h, vertical: 11.v),
                                  decoration: AppDecoration.outlineBlueGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder39),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                            width: 51.h,
                                            child: Divider(
                                                color: theme.colorScheme
                                                    .errorContainer)),
                                        SizedBox(height: 17.v),
                                        Text("Payment method ",
                                            style: CustomTextStyles
                                                .bodySmallItimGray60001),
                                        SizedBox(height: 35.v),
                                        _buildPaymentMethodSection(context),
                                        SizedBox(height: 21.v),
                                        _buildCreditCardSection(context),
                                        SizedBox(height: 43.v)
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 98.h, vertical: 157.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder43,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup17),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle15,
                                            height: 152.adaptSize,
                                            width: 152.adaptSize,
                                            margin:
                                                EdgeInsets.only(left: 33.h)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 33.h),
                                            child: Text("Success!",
                                                style: CustomTextStyles
                                                    .displayMediumItimPrimary)),
                                        SizedBox(height: 6.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                width: 123.h,
                                                child: Text(
                                                    "Your payment is \nsuccessful",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: CustomTextStyles
                                                        .bodyLargeItimGray600))),
                                        SizedBox(height: 82.v),
                                        CustomElevatedButton(
                                            height: 105.v,
                                            text: "Done",
                                            margin: EdgeInsets.only(right: 7.h),
                                            buttonStyle:
                                                CustomButtonStyles.fillIndigoA,
                                            buttonTextStyle: CustomTextStyles
                                                .headlineSmallAlfaSlabOneOnSecondaryContainer,
                                            onPressed: () {
                                              onTapDone(context);
                                            }),
                                        SizedBox(height: 82.v)
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildPriceSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 79.h, vertical: 80.v),
            decoration: AppDecoration.outlineBlue
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 26.v),
                  Container(
                      margin: EdgeInsets.only(right: 1.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 44.h, vertical: 59.v),
                      decoration: AppDecoration.outlinePrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder27),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 32.v),
                            Text("XXXX-XXXX-XXXX-XXXX",
                                style: CustomTextStyles
                                    .bodyMediumOnSecondaryContainer),
                            SizedBox(height: 5.v),
                            Padding(
                                padding: EdgeInsets.only(right: 13.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("James Adam",
                                          style: theme.textTheme.labelSmall),
                                      Text("25/08",
                                          style: theme.textTheme.labelSmall)
                                    ]))
                          ]))
                ])));
  }

  /// Section Widget
  Widget _buildPaymentMethodSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 11.h),
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 26.v),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle6,
              height: 30.v,
              width: 42.h,
              margin: EdgeInsets.symmetric(vertical: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: SizedBox(
                  height: 34.v,
                  child: VerticalDivider(
                      width: 3.h, thickness: 3.v, color: appTheme.gray400))),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle8,
              height: 30.v,
              width: 43.h,
              margin: EdgeInsets.only(left: 18.h, top: 2.v, bottom: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 27.h),
              child: SizedBox(
                  height: 34.v,
                  child: VerticalDivider(
                      width: 3.h, thickness: 3.v, color: appTheme.gray400))),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle10,
              height: 30.v,
              width: 43.h,
              margin: EdgeInsets.only(left: 26.h, top: 2.v, bottom: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: SizedBox(
                  height: 34.v,
                  child: VerticalDivider(
                      width: 3.h, thickness: 3.v, color: appTheme.gray400))),
          Container(
              height: 29.v,
              width: 44.h,
              margin: EdgeInsets.fromLTRB(18.h, 2.v, 6.h, 2.v),
              child: Stack(alignment: Alignment.centerRight, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 29.adaptSize,
                        width: 29.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.redA700,
                            borderRadius: BorderRadius.circular(14.h)))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 29.adaptSize,
                        width: 29.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.lime700D8,
                            borderRadius: BorderRadius.circular(14.h))))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildCreditCardSection(BuildContext context) {
    return SizedBox(
        height: 295.v,
        width: 382.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 11.v,
                  width: 12.h,
                  margin: EdgeInsets.only(top: 60.v, right: 35.h),
                  decoration: BoxDecoration(
                      color: appTheme.redA700,
                      borderRadius: BorderRadius.circular(6.h)))),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 11.v,
                  width: 12.h,
                  margin: EdgeInsets.only(top: 60.v, right: 29.h),
                  decoration: BoxDecoration(
                      color: appTheme.lime700D8,
                      borderRadius: BorderRadius.circular(6.h)))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.all(12.h),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("Credit card ",
                                style:
                                    CustomTextStyles.titleLargeLondrinaSolid)),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("Enter your credit card details",
                                style: CustomTextStyles
                                    .bodySmallLondrinaSolidGray500)),
                        SizedBox(height: 32.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("Card number",
                                style: CustomTextStyles
                                    .bodySmallLondrinaSolidGray50002)),
                        Divider(endIndent: 7.h),
                        SizedBox(height: 30.v),
                        Container(
                            height: 12.v,
                            width: 351.h,
                            margin: EdgeInsets.only(left: 1.h),
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child:
                                      SizedBox(width: 351.h, child: Divider())),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text("Card holder name ",
                                          style: CustomTextStyles
                                              .bodySmallLondrinaSolidGray50002)))
                            ])),
                        SizedBox(height: 32.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h, right: 149.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Expires",
                                      style: CustomTextStyles
                                          .bodySmallLondrinaSolidGray50002),
                                  Text("CVV",
                                      style: CustomTextStyles
                                          .bodySmallLondrinaSolidGray50002)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 1.h, right: 6.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(child: Divider(endIndent: 15.h)),
                                  Expanded(child: Divider(indent: 15.h))
                                ])),
                        SizedBox(height: 50.v),
                        CustomElevatedButton(
                            height: 28.v,
                            text: "Pay 50",
                            margin: EdgeInsets.only(right: 7.h),
                            buttonStyle: CustomButtonStyles.fillIndigoA,
                            buttonTextStyle: CustomTextStyles
                                .bodySmallAlfaSlabOneOnSecondaryContainer),
                        SizedBox(height: 16.v)
                      ])))
        ]));
  }

  /// Navigates to the categoriespaigeScreen when the action is triggered.
  onTapDone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.categoriespaigeScreen);
  }
}
