import 'package:flutter/material.dart';
import 'package:wynk_music/modules/dashboard/home/widgets/carousel.dart';
import 'package:wynk_music/modules/dashboard/home/widgets/cartegory_song_list.dart';
import 'package:wynk_music/modules/dashboard/home/widgets/category_album_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 10, bottom: 70),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: HomeCarousel()
          ),
          CategorySongList(title: 'Recommended For You'),
          SizedBox(height: 25),
          CategorySongList(title: 'Raat Ke Humsafar'),
          SizedBox(height: 25),
          CategorySongList(title: 'After Hours'),
          SizedBox(height: 25),
          CategoryAlbumList(title: 'Top Charts'),
          SizedBox(height: 25),
          CategoryAlbumList(title: 'Top Playlist')
        ],
      ),
    );
  }
}
