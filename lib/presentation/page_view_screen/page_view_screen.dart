import '../page_view_screen/widgets/pageview_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_leading_image.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_trailing_image.dart';
import 'package:travel_with_me/widgets/app_bar/custom_app_bar.dart';
import 'package:travel_with_me/widgets/custom_elevated_button.dart';
import 'package:travel_with_me/widgets/custom_floating_button.dart';
import 'package:travel_with_me/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PageViewScreen extends StatelessWidget {
  PageViewScreen({Key? key}) : super(key: key);

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(15.h),
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          theme.colorScheme.onPrimaryContainer,
                          appTheme.blueGray900
                        ]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPageView),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Spacer(),
                      SizedBox(height: 39.v),
                      _buildStreamDetails(context)
                    ]))),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBack,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgReply,
              margin: EdgeInsets.only(left: 16.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup8916,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 29.h))
        ]);
  }

  /// Section Widget
  Widget _buildPostDescription(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomElevatedButton(
          height: 28.v,
          width: 71.h,
          text: "4 / 6",
          buttonStyle: CustomButtonStyles.fillDeepPurpleATL14,
          buttonTextStyle: CustomTextStyles.titleSmallPrimary),
      SizedBox(height: 22.v),
      Container(
          width: 300.h,
          margin: EdgeInsets.only(right: 81.h),
          child: Text("Haliford Luxury\nHotel",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displayMedium)),
      SizedBox(height: 23.v),
      SizedBox(
          width: 381.h,
          child: Text(
              "halford hotel is a luxury hotel that has 5 stars, this hotel is the most comfortable hotel in this area, very complete facilities make the halford hotel famous in the area, affordable prices can make tourists feel happy",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.50)))
    ]);
  }

  /// Section Widget
  Widget _buildStreamDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _buildPostDescription(context),
          SizedBox(height: 98.v),
          SizedBox(
              height: 40.v,
              child: ListView.separated(
                  padding: EdgeInsets.only(right: 236.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 13.h);
                  },
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return PageviewItemWidget();
                  })),
          SizedBox(height: 40.v),
          Padding(
              padding: EdgeInsets.only(right: 66.h),
              child: CustomTextFormField(
                  controller: commentController,
                  hintText: "Write a comment",
                  hintStyle: CustomTextStyles.titleSmallPrimary,
                  textInputAction: TextInputAction.done,
                  borderDecoration: TextFormFieldStyleHelper.fillGray,
                  fillColor: appTheme.gray600))
        ]));
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
            width: 25.0.h));
  }

  /// Navigates back to the previous screen.
  onTapArrowBack(BuildContext context) {
    Navigator.pop(context);
  }
}
