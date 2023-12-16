import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  const WidgetItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.adaptSize,
      width: 64.adaptSize,
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineDeepPurpleA.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder32,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgEllipse15,
        height: 54.v,
        width: 52.h,
        radius: BorderRadius.circular(
          27.h,
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
