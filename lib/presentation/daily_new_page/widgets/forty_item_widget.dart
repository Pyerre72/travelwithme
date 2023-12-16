import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';

// ignore: must_be_immutable
class FortyItemWidget extends StatelessWidget {
  const FortyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 167.h,
      child: CustomImageView(
        imagePath: ImageConstant.img40,
        height: 167.adaptSize,
        width: 167.adaptSize,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
