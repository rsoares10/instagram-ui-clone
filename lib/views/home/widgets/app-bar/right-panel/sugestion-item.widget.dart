import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_ui_clone/app-constants.dart';

class SugestionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 18.0,
            backgroundImage: NetworkImage(userAvatar),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'user@name',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'User name',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'Ligar',
                style: TextStyle(
                  color: Colors.blue.shade500,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
