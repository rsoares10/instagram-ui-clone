import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_ui_clone/views/home/widgets/app-bar/responsive-menu.widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1.0,
      title: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    'Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: 'Billabong',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              ResponsiveVisibility(
                visible: false,
                visibleWhen: [
                  Condition.largerThan(name: MOBILE),
                ],
                child: Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 30.0,
                      width: 200.0,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 15.0,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isCollapsed: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ResponsiveVisibility(
                visible: false,
                visibleWhen: [
                  Condition.largerThan(name: MOBILE),
                ],
                replacement: ResponsiveMenu(),
                child: Expanded(
                  child: ResponsiveMenu(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
