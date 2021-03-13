import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/views/home/widgets/app-bar/right-panel/sugestion-item.widget.dart';

class SugestionItemList extends StatelessWidget {
  final _sugestionItemList = List.generate(4, (_) => SugestionItem());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _sugestionItemList,
    );
  }
}
