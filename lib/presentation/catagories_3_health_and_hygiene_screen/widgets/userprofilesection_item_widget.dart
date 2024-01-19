import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  const UserprofilesectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: EdgeInsets.only(top: 112.v),
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 25.v,
          ),
          decoration: AppDecoration.fillOnSecondaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 168.v,
                width: 169.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img61d9oedgssl1,
                      height: 161.v,
                      width: 169.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Text(
                          "Colgate",
                          style: CustomTextStyles.titleLargeLight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              SizedBox(
                width: 147.h,
                child: Text(
                  "Strong Teeth Indias \nNo.1 Toothpaste...",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 10.v),
            ],
          ),
        ),
      ),
    );
  }
}
