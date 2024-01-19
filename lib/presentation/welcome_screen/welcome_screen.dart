import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/widgets/custom_elevated_button.dart';
import 'package:saraag_s_happymart/widgets/custom_outlined_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 37.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath:
                    ImageConstant.imgIllustrationOnsecondarycontainer362x329,
                height: 362.v,
                width: 329.h,
              ),
              Spacer(),
              CustomElevatedButton(
                text: "Sign up",
                buttonStyle: CustomButtonStyles.fillOrangeA,
                buttonTextStyle:
                    CustomTextStyles.titleMediumKlarnaTextOnSecondaryContainer,
              ),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                height: 50.v,
                text: "Sign in",
                buttonStyle: CustomButtonStyles.outlineOrangeA,
                buttonTextStyle: CustomTextStyles.titleMediumRobotoOrangeA700,
              ),
              SizedBox(height: 35.v),
            ],
          ),
        ),
      ),
    );
  }
}
