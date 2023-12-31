import '../stories_screen/widgets/eventslist_item_widget.dart';
import '../stories_screen/widgets/storieslist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/presentation/messages_page/messages_page.dart';
import 'package:travel_with_me/presentation/notifications_page/notifications_page.dart';
import 'package:travel_with_me/presentation/profile_page/profile_page.dart';
import 'package:travel_with_me/presentation/trending_tab_container_page/trending_tab_container_page.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_title_searchview.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:travel_with_me/widgets/app_bar/custom_app_bar.dart';
import 'package:travel_with_me/widgets/custom_bottom_bar.dart';

class StoriesScreen extends StatelessWidget {
  StoriesScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Stories",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 20.v),
              _buildStoriesList(context),
              SizedBox(height: 21.v),
              _buildPostColumn(context),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Events",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 16.v),
              _buildEventsList(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 16.h),
        hintText: "Search",
        controller: searchController,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgAdd,
          margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStoriesList(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 89.v,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: 5,
          itemBuilder: (context, index) {
            return StorieslistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPostColumn(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 22.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse21,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                    bottom: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rizal Reynaldhi",
                        style: CustomTextStyles.titleMedium18,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "35 minutes ago",
                        style: CustomTextStyles.labelMediumBluegray100,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup8916,
                  height: 6.v,
                  width: 30.h,
                  margin: EdgeInsets.symmetric(vertical: 22.v),
                ),
              ],
            ),
            SizedBox(height: 18.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 332.h,
                margin: EdgeInsets.only(right: 17.h),
                child: Text(
                  "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargePrimary.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 14.v),
            Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 17.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      top: 5.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 6.v,
                      bottom: 3.v,
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
                    margin: EdgeInsets.only(
                      left: 29.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 7.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "800",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup9078,
                    height: 25.v,
                    width: 54.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEventsList(BuildContext context) {
    return SizedBox(
      height: 201.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 16.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return EventslistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.trendingTabContainerPage;
      case BottomBarEnum.Streams:
        return "/";
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.trendingTabContainerPage:
        return TrendingTabContainerPage();
      case AppRoutes.messagesPage:
        return MessagesPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
