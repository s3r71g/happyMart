import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';

class FlashIconPagefillScreen extends StatelessWidget {
  const FlashIconPagefillScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgIllustrationOnsecondarycontainer,
                height: 877.v,
                width: 430.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
