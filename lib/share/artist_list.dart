import 'package:flutter/material.dart';

class ArtistList extends StatelessWidget {
  final String title;
  final List<CardArtist> songList = [
    CardArtist(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/beiber.jpg',
      title: 'Justin Bieber ',
    ),
    CardArtist(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/Guru-Randhawa-300x300.png',
      title: 'Guru Randhawa',
    ),
    CardArtist(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/maroon5-300x300.png',
      title: 'Maroon 5',
    ),
    CardArtist(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/rehman-300x300.png',
      title: 'A R Rahman',
    ),
    CardArtist(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/sheeran-300x300.png',
      title: 'Ed Sheeran ',
    ),
    CardArtist(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/Kishore.png',
      title: 'Kishore Kumar',
    ),
    CardArtist(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/imagine-300x300.png',
      title: 'Imagine Dragons',
    ),
    CardArtist(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/arijit-300x300.png',
      title: 'Arijit Singh',
    ),
    CardArtist(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/AlanWalker-300x3001.png',
      title: 'Alan Walker',
    ),
    CardArtist(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/charlie-300x300.png',
      title: 'Charlie Puth',
    )
  ];
  ArtistList({this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('$title', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
                GestureDetector(
                  child: Text('More', style: TextStyle(color: Theme.of(context).primaryColor),),
                )
              ],
            )
        ),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: songList.map((elem) => elem).toList(),
            ),
          ),
        )
      ],
    );
  }
}


class CardArtist extends StatelessWidget {
  final String imageUrl;
  final String title;
  CardArtist({this.imageUrl, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[400], width: 1),
                  shape: BoxShape.circle
                ),
                child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        child: Image(
                          image: NetworkImage('$imageUrl'),
                          width: 80,
                          height: 80,
                        ),
                     ),
                    Positioned(
                      bottom: 3,
                      right: -2,
                      child: Icon(
                        Icons.add_circle,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 80,
                child: Text('$title', overflow: TextOverflow.ellipsis),
              )
            ],
          )
      ),
    );
  }
}
