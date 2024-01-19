import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100.h,
          padding: EdgeInsets.symmetric(horizontal: 18.h),
          decoration: AppDecoration.fillPurple50.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder50,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 60.v,
                  width: 47.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 16.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 8.v,
                        width: 10.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 8.h,
                          bottom: 7.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgContrastPurple800,
                        height: 10.v,
                        width: 8.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 6.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 16.h,
                          bottom: 16.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPlay,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 4.h,
                          bottom: 16.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorPurple800,
                        height: 10.v,
                        width: 8.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 11.h,
                          top: 14.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 10.v,
                        width: 8.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 14.v,
                          right: 5.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 10.v,
                        width: 8.h,
                        alignment: Alignment.centerRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsRed800,
                        height: 12.v,
                        width: 7.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 14.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPlay,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 14.v,
                          right: 15.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorLightGreen80001,
                        height: 11.v,
                        width: 22.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 6.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPlayPurple800,
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 9.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 9.v,
                        width: 10.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 15.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 8.v,
                        width: 10.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          left: 10.h,
                          bottom: 16.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgContrastPurple800,
                        height: 8.v,
                        width: 10.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          left: 15.h,
                          bottom: 7.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Text(
                "from the Noun Project",
                style: CustomTextStyles.helveticaNeuePurple800,
              ),
            ],
          ),
        ),
        SizedBox(height: 16.v),
        Text(
          "Fruits",
          style: CustomTextStyles.bodyMediumKlarnaTextSecondaryContainer,
        ),
      ],
    );
  }
}
