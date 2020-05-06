import 'package:flutter/material.dart';

class FromMyMusic extends StatelessWidget {
  final List<CardPlayListItem> cardPlayListItemList = [
    CardPlayListItem(imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/International-Weekly-Top-20-300X30017feb.png', title: 'Flute Trance', songsStaus: '14 songs, 0 offline',),
    CardPlayListItem(imageUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1463550805/srch_zeemusic_ZMC00001_3.jpg', title: 'Saved Queue', songsStaus: '349 songs, 0 offline'),
    CardPlayListItem(imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/popularbollywood.png', title: 'Favorite', songsStaus: '209 songs, 0 offline',)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('From My Musics', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 10,),
          CreatePlayListButton(),
          Column(
            children: cardPlayListItemList.map((elem) => elem).toList(),
          )
        ],
      ),
    );
  }
}


class CardPlayListItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String songsStaus;
  CardPlayListItem({this.imageUrl, this.title, this.songsStaus});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: <Widget>[
                ClipOval(
                  child: Stack(
                    children: <Widget>[
                      Image(
                        image: NetworkImage('$imageUrl'),
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                        colorBlendMode: BlendMode.colorBurn,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('$title'),
                    SizedBox(height: 3,),
                    Text('$songsStaus', style: TextStyle(fontSize: 10),)
                  ],
                )
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 14,
          )
        ],
      )
    );
  }
}


class CreatePlayListButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50.0))
                    ),
                    child: Icon(
                      Icons.playlist_add,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text('Create Playlist'),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 14,
            )
          ],
        )
    );
  }
}

