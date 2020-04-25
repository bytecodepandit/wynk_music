import 'package:flutter/material.dart';
import 'dart:ui';

class MusicHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0,
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/music_player');
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(8.0)),
                color: Colors.black.withOpacity(0.6),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: new Offset(1.0, 1.0),
                        spreadRadius: 1.0,
                        blurRadius: 2.0,
                      )
                    ],
                  ),
                  child: Hero(
                    tag: "DemoTag",
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      child: Image(
                          image: NetworkImage('https://img.wynk.in/unsafe/90x90/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1566875956/srch_zeemusic_INZ031406006.jpg'),
                          width: 40,
                          height: 40
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Music title', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 2),
                      Text('Singer name', style: TextStyle(color: Colors.grey, fontSize: 12))
                    ],
                  )
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 30,
                  child: IconButton(
                    icon: Icon(
                      Icons.pause_circle_filled,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
