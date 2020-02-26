import 'package:anime_app/src/utils/nav.dart';
import 'package:anime_app/src/views/detail.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<dynamic> items;
  final PageController pageController;
  final int currentPage;

  Carousel({this.items, this.pageController, this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: this.pageController,
        reverse: false,
        itemCount: 10,
        onPageChanged: (index) {
          print(index);
        },
        itemBuilder: (_, index) {
          bool pageActive = this.currentPage == index ? true : false;

          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            margin: EdgeInsets.only(
              top: pageActive ? 0 : 30,
              bottom: pageActive ? 0 : 30,
            ),
            child: Stack(
              alignment: AlignmentDirectional.bottomStart,
              overflow: Overflow.clip,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    push(context, DetailView());
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: pageActive ? 3 : 0,
                          offset: pageActive ? Offset(0, 5) : Offset(0, 0),
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          index % 2 == 0
                              ? 'https://cdn-eu.anidb.net/images/main/234328.jpg'
                              : 'https://cdn-eu.anidb.net/images/main/224521.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: -8,
                  child: RawMaterialButton(
                    onPressed: () {
                      print('add clicked');
                    },
                    child: new Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    shape: new CircleBorder(),
                    elevation: 0,
                    fillColor: Color.fromRGBO(0, 0, 0, 0.6),
                    padding: const EdgeInsets.all(8),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
