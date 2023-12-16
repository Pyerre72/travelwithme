import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  const NotificationsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse22,
          height: 54.v,
          width: 52.h,
          radius: BorderRadius.circular(
            27.h,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kevin has followed you",
                  style: CustomTextStyles.titleMediumBlack90001,
                ),
                SizedBox(height: 7.v),
                Text(
                  "1 hour ago",
                  style: CustomTextStyles.bodyLargeGray600,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
