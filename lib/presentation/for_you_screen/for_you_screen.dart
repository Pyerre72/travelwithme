import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_subtitle.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_trailing_image.dart';
import 'package:travel_with_me/widgets/app_bar/custom_app_bar.dart';

class ForYouScreen extends StatelessWidget {
  const ForYouScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgForYou,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5.v),
                _buildForYou(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildForYou(BuildContext context) {
    return Container(
      decoration: AppDecoration.gradientBlackToBlack,
      child: CustomAppBar(
        leadingWidth: 66.h,
        leading: AppbarLeadingCircleimage(
          imagePath: ImageConstant.imgEllipse9,
          margin: EdgeInsets.only(left: 16.h),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Column(
            children: [
              AppbarSubtitle(
                text: "Lucas Anna ",
              ),
              SizedBox(height: 5.v),
              AppbarSubtitleThree(
                text: "35:16",
                margin: EdgeInsets.only(right: 76.h),
              ),
            ],
          ),
        ),
        actions: [
          AppbarTrailingImage(
            imagePath: ImageConstant.imgClosePrimary,
            margin: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
          ),
        ],
      ),
    );
  }
}
