import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';

class FlashCircleiconScreen extends StatelessWidget {
  const FlashCircleiconScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 873.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 146.h,
                    vertical: 339.v,
                  ),
                  decoration: AppDecoration.fillIndigoA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder108,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Flash",
                        style: theme.textTheme.displayMedium,
                      ),
                      SizedBox(height: 88.v),
                      Text(
                        "Cart",
                        style: theme.textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIllustration,
                height: 818.v,
                width: 430.h,
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
