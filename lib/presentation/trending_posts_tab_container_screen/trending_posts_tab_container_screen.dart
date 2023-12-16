import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/presentation/discover_page/discover_page.dart';
import 'package:travel_with_me/presentation/messages_page/messages_page.dart';
import 'package:travel_with_me/presentation/notifications_page/notifications_page.dart';
import 'package:travel_with_me/presentation/profile_page/profile_page.dart';
import 'package:travel_with_me/presentation/stream_page/stream_page.dart';
import 'package:travel_with_me/presentation/trending_tab_container_page/trending_tab_container_page.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_title_searchview.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:travel_with_me/widgets/app_bar/custom_app_bar.dart';
import 'package:travel_with_me/widgets/custom_bottom_bar.dart';

class TrendingPostsTabContainerScreen extends StatefulWidget {
  const TrendingPostsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TrendingPostsTabContainerScreenState createState() =>
      TrendingPostsTabContainerScreenState();
}

class TrendingPostsTabContainerScreenState
    extends State<TrendingPostsTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              _buildTabview(context),
              SizedBox(
                height: 662.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    StreamPage(),
                    StreamPage(),
                    DiscoverPage(),
                    DiscoverPage(),
                  ],
                ),
              ),
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
          imagePath: ImageConstant.imgGroup9086,
          margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 30.v,
      width: 398.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.deepPurpleA200,
        unselectedLabelColor: appTheme.indigo100,
        tabs: [
          Tab(
            child: Text(
              "Trending",
            ),
          ),
          Tab(
            child: Text(
              "Latest",
            ),
          ),
          Tab(
            child: Text(
              "Discover",
            ),
          ),
          Tab(
            child: Text(
              "Daily New",
            ),
          ),
        ],
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
