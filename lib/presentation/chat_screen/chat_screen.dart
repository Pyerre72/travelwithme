import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_leading_image.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_title.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:travel_with_me/widgets/app_bar/custom_app_bar.dart';
import 'package:travel_with_me/widgets/custom_elevated_button.dart';
import 'package:travel_with_me/widgets/custom_icon_button.dart';
import 'package:travel_with_me/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Divider(),
                      SizedBox(height: 41.v),
                      Container(
                          margin: EdgeInsets.only(left: 168.h, right: 16.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 23.h, vertical: 12.v),
                          decoration: AppDecoration.white.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
                                Text("Hi! larry how are you today?",
                                    style: theme.textTheme.bodyMedium)
                              ])),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildDeliveredRow(context,
                              deliveryStatusText: "Delivered")),
                      SizedBox(height: 22.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 286.h,
                              margin: EdgeInsets.only(left: 16.h, right: 112.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.h, vertical: 6.v),
                              decoration: AppDecoration.fillDeepPurple.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 6.v),
                                    Container(
                                        width: 226.h,
                                        margin: EdgeInsets.only(right: 19.h),
                                        child: Text(
                                            "Hello Gerry i'm very good, anyway are you interested in some of my pics?",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumPrimaryContainer
                                                .copyWith(height: 1.50)))
                                  ]))),
                      SizedBox(height: 24.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Row(children: [
                                Column(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.img49,
                                      height: 65.v,
                                      width: 109.h,
                                      radius: BorderRadius.only(
                                          topLeft: Radius.circular(15.h))),
                                  SizedBox(height: 2.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.img50,
                                      height: 65.v,
                                      width: 109.h,
                                      radius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15.h)))
                                ]),
                                CustomImageView(
                                    imagePath: ImageConstant.img51,
                                    height: 130.v,
                                    width: 160.h,
                                    radius: BorderRadius.horizontal(
                                        right: Radius.circular(15.h)),
                                    margin: EdgeInsets.only(left: 2.h))
                              ]))),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                          height: 45.v,
                          width: 179.h,
                          text: "Wow, Awesome !",
                          margin: EdgeInsets.only(right: 16.h),
                          buttonStyle: CustomButtonStyles.fillDeepPurpleATL15,
                          buttonTextStyle: theme.textTheme.bodyMedium!),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildDeliveredRow(context,
                              deliveryStatusText: "Delivered")),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildMessageBox(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapClose(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Garry Willer"),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse14,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildMessageBox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 39.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomTextFormField(
                  controller: commentController,
                  hintText: "Write a comment",
                  textInputAction: TextInputAction.done,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillSecondaryContainer,
                  fillColor: theme.colorScheme.secondaryContainer)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(13.h),
                  decoration: IconButtonStyleHelper.fillDeepPurpleATL25,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgGroup9143)))
        ]));
  }

  /// Common widget
  Widget _buildDeliveredRow(
    BuildContext context, {
    required String deliveryStatusText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(deliveryStatusText,
          style: CustomTextStyles.bodySmallGray600
              .copyWith(color: appTheme.gray600)),
      CustomImageView(
          imagePath: ImageConstant.imgLocationDeepPurpleA200,
          height: 10.v,
          width: 15.h,
          margin: EdgeInsets.only(left: 12.h, top: 2.v, bottom: 2.v))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
