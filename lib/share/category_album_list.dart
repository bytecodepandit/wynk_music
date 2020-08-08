import 'package:flutter/material.dart';
import 'package:wynk_music/modules/dashboard/play_list_profile/play_list_profile.widget.dart';

class CategoryAlbumList extends StatelessWidget {

  showPlayListProfile(BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
        MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 100),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Material(
            child: PlayListProfile(),
          );
        });
  }



  final String title;
  final List<CardAlbum> songList = [
    CardAlbum(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/International-Weekly-Top-20-300X30017feb.png',
      title: 'Weekly Top 20: International ',
    ),
    CardAlbum(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/Wink-top-100-300x300.png',
      title: 'Wynk Top 100',
    ),
    CardAlbum(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/Romance-top-50-english-300x300.png',
      title: 'Romance Top 40: English',
    ),
    CardAlbum(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/weeklyhinditop.png',
      title: 'Weekly Top 20 - Bollywood',
    ),
    CardAlbum(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/UKTop40-300.png',
      title: 'UK Top 40',
    ),
    CardAlbum(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/radiotophnplaylist.png',
      title: 'Radio Top 20 - Bollywood',
    ),
    CardAlbum(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/EDM-top-300.png',
      title: 'EDM Top 40',
    ),
    CardAlbum(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/romancetophn.png',
      title: 'Romance Top 50 - Bollywood',
    ),
    CardAlbum(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/US-top-40-300.png',
      title: 'US Top 40',
    ),
    CardAlbum(
      imageUrl: 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/dancetophn.png',
      title: 'Dance Top 50 - Bollywood',
    )
  ];
  CategoryAlbumList({this.title});
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
              children: songList.map((elem) => GestureDetector(
                onTap: () {
                  showPlayListProfile(context);
                },
                child: elem,
              )).toList(),
            ),
          ),
        )
      ],
    );
  }
}


class CardAlbum extends StatelessWidget {
  final String imageUrl;
  final String title;
  CardAlbum({this.imageUrl, this.title});
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
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  child: Stack(
                    children: <Widget>[
                      Image(
                        image: NetworkImage('$imageUrl'),
                        width: 120,
                        height: 120,
                      ),
                      Positioned(
                        bottom: 7,
                        left: 7,
                        child: Icon(
                          Icons.play_circle_filled,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 120,
                child: Text('$title', overflow: TextOverflow.ellipsis),
              )
            ],
          )
      ),
    );
  }
}
