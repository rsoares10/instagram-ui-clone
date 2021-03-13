import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/views/home/widgets/store-list/story-circle.widget.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class StoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      height: 110.0,
      margin: EdgeInsets.only(top: mobile ? 15.0 : 35.0),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: 16,
        separatorBuilder: (_, __) => SizedBox(width: 16.0),
        itemBuilder: (_, index) {
          return StoryCircle();
        },
      ),
    );
  }
}
