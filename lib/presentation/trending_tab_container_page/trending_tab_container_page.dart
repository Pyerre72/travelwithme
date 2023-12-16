import '../trending_tab_container_page/widgets/stories_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/presentation/trending_page/trending_page.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_title_searchview.dart';
import 'package:travel_with_me/widgets/app_bar/appbar_trailing_image.dart';
import 'package:travel_with_me/widgets/app_bar/custom_app_bar.dart';

class TrendingTabContainerPage extends StatefulWidget {
  const TrendingTabContainerPage({Key? key}) : super(key: key);

  @override
  TrendingTabContainerPageState createState() =>
      TrendingTabContainerPageState();
}

// ignore_for_file: must_be_immutable
class TrendingTabContainerPageState extends State<TrendingTabContainerPage>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

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
                child: Column(children: [
                  SizedBox(height: 25.v),
                  _buildStories(context),
                  SizedBox(height: 33.v),
                  _buildTabview(context),
                  Expanded(
                      child: SizedBox(
                          height: 544.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                TrendingPage(),
                                TrendingPage(),
                                TrendingPage(),
                                TrendingPage()
                              ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "Search",
            controller: searchController),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgProfile40x40,
              margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildStories(BuildContext context) {
    return SizedBox(
        height: 89.v,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return StoriesItemWidget();
            }));
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
              Tab(child: Text("Trending")),
              Tab(child: Text("Latest")),
              Tab(child: Text("Discover")),
              Tab(child: Text("Daily New"))
            ]));
  }
}
