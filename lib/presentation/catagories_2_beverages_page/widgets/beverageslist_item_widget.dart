import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';

// ignore: must_be_immutable
class BeverageslistItemWidget extends StatelessWidget {
  const BeverageslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62.h,
      child: Padding(
        padding: EdgeInsets.only(top: 10.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEnergyDrinksLogo,
              height: 60.v,
              width: 62.h,
            ),
            SizedBox(height: 5.v),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 50.h,
                margin: EdgeInsets.only(right: 3.h),
                child: Text(
                  "Energy\n Drinks",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
