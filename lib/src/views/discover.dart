import 'package:anime_app/src/widgets/app_bar.dart';
import 'package:anime_app/src/widgets/carousel.dart';
import 'package:anime_app/src/widgets/list.dart';
import 'package:flutter/material.dart';

class DiscoverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Discover',
      ),
      body: SafeArea(
        child: _body(),
      ),
    );
  }

  _body() {
    return Container(
      child: Column(
        children: <Widget>[
          Carousel(),
          CustomList(
            title: 'Discover',
            subtitle: 'Recently Added Episodes',
          ),
        ],
      ),
    );
  }
}
