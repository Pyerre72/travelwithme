import '../trending_posts_page/widgets/postitem_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travel_with_me/core/app_export.dart';

class TrendingPostsPage extends StatefulWidget {
  const TrendingPostsPage({Key? key}) : super(key: key);

  @override
  TrendingPostsPageState createState() => TrendingPostsPageState();
}

class TrendingPostsPageState extends State<TrendingPostsPage>
    with AutomaticKeepAliveClientMixin<TrendingPostsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPrimary,
                child: Column(children: [
                  SizedBox(height: 17.v),
                  _buildPostItem(context)
                ]))));
  }

  /// Section Widget
  Widget _buildPostItem(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 4,
            crossAxisSpacing: 16.h,
            mainAxisSpacing: 16.h,
            staggeredTileBuilder: (index) {
              return StaggeredTile.fit(2);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return PostitemItemWidget();
            }));
  }
}
