import 'package:anime_app/src/widgets/app_bar.dart';
import 'package:anime_app/src/widgets/carousel.dart';
import 'package:anime_app/src/widgets/list.dart';
import 'package:flutter/material.dart';

class DiscoverView extends StatefulWidget {
  @override
  _DiscoverViewState createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  PageController _controller = PageController(
    initialPage: 0,
    keepPage: true,
    viewportFraction: 0.6,
  );
  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      int next = _controller.page.round();
      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
  }

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
          Carousel(
            pageController: this._controller,
            currentPage: this.currentPage,
          ),
          CustomList(
            title: 'Discover',
            subtitle: 'Recently Added Episodes',
          ),
        ],
      ),
    );
  }
}
