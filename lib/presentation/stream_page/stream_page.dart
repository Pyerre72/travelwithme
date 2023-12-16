import '../stream_page/widgets/streamlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';

// ignore_for_file: must_be_immutable
class StreamPage extends StatefulWidget {
  const StreamPage({Key? key})
      : super(
          key: key,
        );

  @override
  StreamPageState createState() => StreamPageState();
}

class StreamPageState extends State<StreamPage>
    with AutomaticKeepAliveClientMixin<StreamPage> {
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
          child: Column(
            children: [
              SizedBox(height: 17.v),
              _buildStreamList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStreamList(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 602.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 21.h,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return StreamlistItemWidget();
          },
        ),
      ),
    );
  }
}
