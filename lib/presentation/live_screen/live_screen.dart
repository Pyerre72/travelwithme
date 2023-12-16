import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_subtitle.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_trailing_image.dart';
import 'package:travel_with_me/widgets/app_bar/custom_app_bar.dart';
import 'package:travel_with_me/widgets/custom_floating_button.dart';
import 'package:travel_with_me/widgets/custom_text_form_field.dart';

class LiveScreen extends StatelessWidget {
  LiveScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLive,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildFourteen(context),
                Spacer(),
                _buildCommentSection(context),
              ],
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
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

  /// Section Widget
  Widget _buildCommentSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 29.v,
      ),
      decoration: AppDecoration.gradientGrayToBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 39.v,
                  bottom: 9.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder32,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse945x45,
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            radius: BorderRadius.circular(
                              22.h,
                            ),
                            margin: EdgeInsets.only(
                              top: 4.v,
                              bottom: 5.v,
                            ),
                          ),
                          Container(
                            width: 164.h,
                            margin: EdgeInsets.only(
                              left: 15.h,
                              top: 3.v,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Erlikhe Sweet\n",
                                    style:
                                        CustomTextStyles.bodyMediumBluegray100,
                                  ),
                                  TextSpan(
                                    text: "Can i join with you?",
                                    style:
                                        CustomTextStyles.bodyLargeBluegray100,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder32,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse845x45,
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            radius: BorderRadius.circular(
                              22.h,
                            ),
                            margin: EdgeInsets.only(bottom: 1.v),
                          ),
                          Container(
                            width: 103.h,
                            margin: EdgeInsets.only(left: 18.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Dong Khuwan\n",
                                    style:
                                        CustomTextStyles.bodyMediumBluegray100,
                                  ),
                                  TextSpan(
                                    text: "So Beautiful",
                                    style:
                                        CustomTextStyles.bodyLargeBluegray100,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup9142,
                height: 180.v,
                width: 98.h,
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 66.h),
            child: CustomTextFormField(
              controller: commentController,
              hintText: "Write a comment",
              hintStyle: CustomTextStyles.titleSmallPrimary,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray600,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 50,
      width: 50,
      backgroundColor: appTheme.deepPurpleA200,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup9143,
        height: 25.0.v,
        width: 25.0.h,
      ),
    );
  }
}
