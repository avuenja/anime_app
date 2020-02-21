import 'package:anime_app/src/utils/nav.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isBack;

  const CustomAppBar({this.title = '', this.isBack = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          this.isBack
              ? InkWell(
                  onTap: () {
                    pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios),
                )
              : InkWell(
                  onTap: () {
                    print('action click');
                  },
                  child: Icon(Icons.search),
                ),
          Text(
            this.title,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars3.githubusercontent.com/u/5226773?v=4',
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, double.maxFinite);
}
