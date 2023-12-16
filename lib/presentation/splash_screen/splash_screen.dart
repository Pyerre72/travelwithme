import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurpleA200,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSocialMedia1,
                height: 120.adaptSize,
                width: 120.adaptSize,
              ),
              SizedBox(height: 20.v),
              Text(
                "Social",
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
