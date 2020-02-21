import 'package:anime_app/src/widgets/app_bar.dart';
import 'package:anime_app/src/widgets/badge.dart';
import 'package:anime_app/src/widgets/star_rating.dart';
import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isBack: true,
      ),
      body: SafeArea(
        child: _body(),
      ),
    );
  }

  _body() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Mob Psycho 100 II',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: Row(
              children: <Widget>[
                Badge(
                  color: Colors.amber,
                  text: 'Released jan 7, 2019',
                ),
                SizedBox(
                  width: 10,
                ),
                Badge(
                  color: Colors.green,
                  text: 'Finished',
                ),
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            overflow: Overflow.clip,
            children: <Widget>[
              Container(
                height: 350,
                margin: EdgeInsets.only(bottom: 10),
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
                      'https://miro.medium.com/max/2560/1*hykX32rBEKzHwvM2G8UFKA.jpeg',
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: RawMaterialButton(
                  onPressed: () {
                    print('add clicked');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        'Add To My List',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  elevation: 0,
                  fillColor: Color.fromRGBO(0, 0, 0, 0.6),
                  padding: const EdgeInsets.all(8),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Action, Comedy, Supernatural',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                Text(
                  '24 min/Ep',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              StarRating(
                onChanged: (value) {
                  setState(() {
                    rating = value;
                  });
                },
                rating: this.rating,
              ),
              Text(
                '4.6',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              SizedBox(width: 5,),
              Text(
                '(140,687)',
                style: TextStyle(
                  color: Colors.black45,
                  // fontSize: 18,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text(
              'Kageyama is an ordinary 8th grader who just wants to live a normal life. Although he can disappear in the crowd in a flash, he was actually the most powerful psychic. The lives of those around Mob and his numerous feelings that softly piles up for the eventual explosion. The mysterious group "Claw" stands before him once again. In the midst of his youthful days, where will his roaring heart take him!?',
            ),
          ),
          Expanded(child: Container(),),
          RawMaterialButton(
            onPressed: () {
              print('start watching now clicked');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Start watching now'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            elevation: 0,
            fillColor: Colors.red,
            padding: const EdgeInsets.all(15),
          ),
        ],
      ),
    );
  }
}
