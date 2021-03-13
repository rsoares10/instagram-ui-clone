import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/views/home/widgets/app-bar/responsive-app-bar.widget.dart';
import 'package:instagram_ui_clone/views/home/widgets/app-bar/right-panel/right-panel.widget.dart';
import 'package:instagram_ui_clone/views/home/widgets/post-widget/post-widget-list.widget.dart';
import 'package:instagram_ui_clone/views/home/widgets/store-list/story-list.widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52.0),
        child: ResponsiveAppBar(),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000.0),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: <Widget>[
                    StoryList(),
                    PostWidgetList(),
                  ],
                ),
              ),
              RightPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
