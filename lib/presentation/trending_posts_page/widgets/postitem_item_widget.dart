import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';

// ignore: must_be_immutable
class PostitemItemWidget extends StatelessWidget {
  const PostitemItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse2135x35,
                height: 35.adaptSize,
                width: 35.adaptSize,
                radius: BorderRadius.circular(
                  17.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rizal Reynaldhi",
                      style: CustomTextStyles.labelLargePrimary,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "35 minutes ago",
                      style: CustomTextStyles.labelMediumBluegray100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          SizedBox(
            width: 141.h,
            child: Text(
              "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come true",
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Row(
            children: [
              Text(
                "#Bali",
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "#dreams",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 17.v,
                width: 19.h,
                margin: EdgeInsets.only(top: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 1.v,
                ),
                child: Text(
                  "2200",
                  style: theme.textTheme.bodySmall,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorPrimary,
                height: 18.v,
                width: 19.h,
                margin: EdgeInsets.only(left: 29.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 3.v,
                ),
                child: Text(
                  "800",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
