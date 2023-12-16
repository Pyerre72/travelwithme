import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';

// ignore: must_be_immutable
class SocialmedialistItemWidget extends StatelessWidget {
  const SocialmedialistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgTwitterBlue500,
        height: 50.adaptSize,
        width: 50.adaptSize,
      ),
    );
  }
}
