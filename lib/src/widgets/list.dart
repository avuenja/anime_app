import 'package:anime_app/src/widgets/badge.dart';
import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  final String title;
  final String subtitle;

  CustomList({this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
              right: 10,
            ),
            child: Text(
              this.title,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 10,
            ),
            child: Text(
              this.subtitle,
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              itemCount: 20,
              itemBuilder: (_, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Badge(
                              color:
                                  index % 2 == 0 ? Colors.red : Colors.purple,
                              text: index % 2 == 0 ? 'TV Series' : 'Movie',
                            ),
                            Container(
                              width: 265,
                              child: Text(
                                index % 2 == 0
                                    ? 'One Punch Man 2nd Season'
                                    : 'Sen to Chihiro no Kamikakushi',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              width: 265,
                              margin: const EdgeInsets.only(
                                top: 15,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  index % 2 == 0
                                      ? Text(
                                          'Episode 7',
                                          style: TextStyle(
                                            color: Colors.black45,
                                          ),
                                        )
                                      : Text(''),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.access_time,
                                        size: 15,
                                        color: Colors.black45,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '23min',
                                        style: TextStyle(
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
