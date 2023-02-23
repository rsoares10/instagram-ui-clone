import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/app-constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: isDesktop ? 16.0 : 0.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 14.0, 14.0, 14.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 18.0,
                  backgroundImage: NetworkImage(userAvatar),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Text(
                    'User name',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.network(userPost),
          Padding(
            padding: const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 4.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.messenger_outline),
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_border),
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Curtido por User name e outras 300 pessoas',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'HÁ 1 HORA',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          if (isDesktop) ...[
            Divider(
              color: Colors.white,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 20.0, 0.0, 24.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: false,
                        hintText: 'Adicione uma mensagem...',
                        hintStyle: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  // textColor: Colors.blue,
                  child: Text('Publicar'),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
