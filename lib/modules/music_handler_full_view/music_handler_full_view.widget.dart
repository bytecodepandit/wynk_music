import 'package:flutter/material.dart';

class MusicHandlerFullView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Hero(
            tag: "DemoTag",
            child: Image(
                image: NetworkImage('https://img.wynk.in/unsafe/90x90/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1566875956/srch_zeemusic_INZ031406006.jpg'),
                width: 80,
                height: 80
            ),
          ),
          Text('sfdasdfsadfsadfasdfsadfasdfsadfasdfsadfsdaf')
        ],
      ),
    );
  }
}
