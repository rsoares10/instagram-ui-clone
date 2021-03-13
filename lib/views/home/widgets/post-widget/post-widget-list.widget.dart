import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/views/home/widgets/post-widget/post-widget.widget.dart';

class PostWidgetList extends StatelessWidget {
  final _postWidgetList = List.generate(3, (_) => PostWidget());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _postWidgetList,
    );
  }
}
