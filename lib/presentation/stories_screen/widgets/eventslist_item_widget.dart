import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class EventslistItemWidget extends StatelessWidget {
  const EventslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 147.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 144.v,
            width: 147.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img19144x147,
                  height: 144.v,
                  width: 147.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomElevatedButton(
                  height: 20.v,
                  width: 54.h,
                  text: "LIVE",
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 12.v,
                  ),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 4.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup9027,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                    ),
                  ),
                  buttonTextStyle: CustomTextStyles.labelMediumPrimary,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Text(
            "LIVE - We The Fest",
            style: CustomTextStyles.titleSmallBlack90001,
          ),
          SizedBox(height: 6.v),
          Text(
            "19 : 00 | Forg Stadium",
            style: CustomTextStyles.labelLargeBluegray400,
          ),
        ],
      ),
    );
  }
}
