import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/app-constants.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 66.0,
          width: 66.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black87,
                ),
                child: CircleAvatar(
                  radius: 26,
                  backgroundImage: NetworkImage(userAvatar),
                ),
              ),
            ),
          ),
        ),
        Text(
          'User name',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
