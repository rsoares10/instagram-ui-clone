import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/app-constants.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ResponsiveMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          child: IconButton(onPressed: () {}, icon: Icon(Icons.search), color: Colors.white),
          visibleWhen: [
            Condition.smallerThan(name: TABLET),
          ],
        ),
        const SizedBox(width: 4.0),
        IconButton(onPressed: () {}, icon: Icon(Icons.home), color: Colors.white),
        const SizedBox(width: 4.0),
        IconButton(onPressed: () {}, icon: Icon(Icons.send), color: Colors.white),
        const SizedBox(width: 4.0),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border), color: Colors.white),
        const SizedBox(width: 16.0),
        CircleAvatar(
          radius: 16.0,
          backgroundImage: NetworkImage(userAvatar),
        ),
      ],
    );
  }
}
