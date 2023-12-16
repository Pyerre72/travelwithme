import '../friends_screen/widgets/followlist_item_widget.dart';
import '../friends_screen/widgets/socialmedialist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_leading_image.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_trailing_image.dart';
import 'package:travel_with_me/widgets/app_bar/custom_app_bar.dart';
import 'package:travel_with_me/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class FriendsScreen extends StatelessWidget {
  FriendsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("Friends",
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 13.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: CustomSearchView(
                                  controller: searchController,
                                  hintText: "Search",
                                  alignment: Alignment.center))),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("Connect to Your Friends",
                              style: CustomTextStyles
                                  .titleLargeDeeppurpleA200Bold)),
                      SizedBox(height: 28.v),
                      _buildSocialMediaList(context),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("Recommeded",
                              style: CustomTextStyles
                                  .titleLargeDeeppurpleA200Bold)),
                      SizedBox(height: 16.v),
                      _buildFollowList(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPersonAddAlt1,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
              onTap: () {
                onTapPersonAddAltOne(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildSocialMediaList(BuildContext context) {
    return SizedBox(
        height: 50.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 16.h, right: 106.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 30.h);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return SocialmedialistItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildFollowList(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.5.v),
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                              height: 2.v,
                              thickness: 2.v,
                              color: theme.colorScheme.secondaryContainer)));
                },
                itemCount: 7,
                itemBuilder: (context, index) {
                  return FollowlistItemWidget();
                })));
  }

  /// Navigates back to the previous screen.
  onTapArrowBack(BuildContext context) {
    Navigator.pop(context);
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  onTapPersonAddAltOne(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
