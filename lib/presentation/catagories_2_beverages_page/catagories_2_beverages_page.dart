import '../catagories_2_beverages_page/widgets/beverageslist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/widgets/custom_elevated_button.dart';
import 'package:saraag_s_happymart/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Catagories2BeveragesPage extends StatelessWidget {
  Catagories2BeveragesPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController addToCartEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnSecondaryContainer,
          child: SizedBox(
            height: 809.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 277.v,
                    width: 184.h,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      bottom: 100.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.h,
                      vertical: 21.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSlice1,
                      height: 197.v,
                      width: 156.h,
                      alignment: Alignment.bottomRight,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 277.v,
                    width: 184.h,
                    margin: EdgeInsets.only(
                      right: 39.h,
                      bottom: 99.v,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onSecondaryContainer,
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgThumsup1,
                  height: 193.v,
                  width: 141.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(
                    right: 35.h,
                    bottom: 122.v,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 131.h,
                    margin: EdgeInsets.only(
                      left: 28.h,
                      bottom: 64.v,
                    ),
                    child: Text(
                      "Slice Mango\nDrink(1000ml)",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 151.h,
                    margin: EdgeInsets.only(
                      right: 45.h,
                      bottom: 61.v,
                    ),
                    child: Text(
                      "Thumps Up soft \nDrink(1.2 litre)",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      bottom: 23.v,
                    ),
                    child: Text(
                      "65",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                _buildAddToCartButton(context),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 323.v),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      "Beverages & drinks",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildBeveragesList(context),
                        SizedBox(
                          height: 763.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 486.v),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 17.h,
                                          vertical: 23.v,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgCocaCola1,
                                              height: 161.v,
                                              width: 127.h,
                                              alignment: Alignment.centerRight,
                                              margin:
                                                  EdgeInsets.only(right: 7.h),
                                            ),
                                            SizedBox(height: 11.v),
                                            SizedBox(
                                              width: 136.h,
                                              child: Text(
                                                "coca-cola soft\nDrink(750 ml)",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style:
                                                    theme.textTheme.titleLarge,
                                              ),
                                            ),
                                            SizedBox(height: 6.v),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.h),
                                        child: SizedBox(
                                          height: 763.v,
                                          child: VerticalDivider(
                                            width: 1.h,
                                            thickness: 1.v,
                                            indent: 9.h,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 9.v),
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    child: Divider(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 314.v,
                    width: 190.h,
                    margin: EdgeInsets.only(
                      top: 148.v,
                      right: 33.h,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 277.v,
                            width: 184.h,
                            padding: EdgeInsets.symmetric(horizontal: 22.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSprite1,
                              height: 161.v,
                              width: 117.h,
                              alignment: Alignment.topRight,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 166.h,
                            margin: EdgeInsets.only(
                              right: 2.h,
                              bottom: 92.v,
                            ),
                            child: Text(
                              "Sprite Lime \nFlavoured(300ml)",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 21.h,
                              top: 252.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 14.v,
                                    bottom: 22.v,
                                  ),
                                  child: Text(
                                    "25",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                                _buildAddToCartEditText(context),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 32.h,
                      bottom: 3.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15.v,
                            bottom: 21.v,
                          ),
                          child: Text(
                            "68",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        _buildAddToCartButton1(context),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      bottom: 347.v,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 14.v,
                            bottom: 22.v,
                          ),
                          child: Text(
                            "40",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        _buildAddToCartButton2(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCartButton(BuildContext context) {
    return CustomElevatedButton(
      height: 62.v,
      width: 103.h,
      text: "ADD",
      margin: EdgeInsets.only(
        left: 83.h,
        bottom: 6.v,
      ),
      alignment: Alignment.bottomLeft,
    );
  }

  /// Section Widget
  Widget _buildBeveragesList(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 112.v,
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: 16.h,
            right: 21.h,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: 7,
          itemBuilder: (context, index) {
            return BeverageslistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCartEditText(BuildContext context) {
    return CustomTextFormField(
      width: 104.h,
      controller: addToCartEditTextController,
      hintText: "ADD",
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 18.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillGray1,
      fillColor: appTheme.gray40002,
    );
  }

  /// Section Widget
  Widget _buildAddToCartButton1(BuildContext context) {
    return CustomElevatedButton(
      height: 62.v,
      width: 102.h,
      text: "ADD",
      margin: EdgeInsets.only(left: 21.h),
    );
  }

  /// Section Widget
  Widget _buildAddToCartButton2(BuildContext context) {
    return CustomElevatedButton(
      height: 62.v,
      width: 105.h,
      text: "ADD",
      margin: EdgeInsets.only(left: 23.h),
    );
  }
}
