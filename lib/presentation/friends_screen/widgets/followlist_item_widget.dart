import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class FollowlistItemWidget extends StatelessWidget {
  const FollowlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 5.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse5,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(
              left: 2.h,
              bottom: 8.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kevin Allsrub",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 6.v),
                Text(
                  "Your’e friends on twitter",
                  style: CustomTextStyles.bodyMediumBluegray700,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            width: 76.h,
            text: "Follow",
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }
}
