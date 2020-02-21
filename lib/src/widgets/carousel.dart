import 'package:anime_app/src/utils/nav.dart';
import 'package:anime_app/src/views/detail.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<dynamic> items;

  const Carousel({this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: PageController(
          viewportFraction: 0.6,
          initialPage: 0,
        ),
        reverse: false,
        itemCount: 10,
        onPageChanged: (index) {
          print(index);
        },
        itemBuilder: (_, index) {
          return Container(
            // color: index % 2 == 0 ? Colors.green : Colors.lime,
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
                          blurRadius: 3,
                          offset: Offset(0, 5),
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
