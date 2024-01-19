import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';

class FlashCircleiconOneScreen extends StatelessWidget {
  const FlashCircleiconOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.purple800,
        body: Container(
          height: 897.v,
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 306.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 216.adaptSize,
                  width: 216.adaptSize,
                  child: CircularProgressIndicator(
                    value: 0.5,
                    backgroundColor: theme.colorScheme.primary.withOpacity(1),
                    color: theme.colorScheme.primary.withOpacity(1),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 42.h,
                    top: 56.v,
                    right: 39.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Flash",
                        style: theme.textTheme.displayMedium,
                      ),
                      Text(
                        "Cart",
                        style: theme.textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
