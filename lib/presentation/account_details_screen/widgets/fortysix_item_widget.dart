import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';

// ignore: must_be_immutable
class FortysixItemWidget extends StatelessWidget {
  const FortysixItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 117.h,
      child: CustomImageView(
        imagePath: ImageConstant.img46,
        height: 161.v,
        width: 117.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
