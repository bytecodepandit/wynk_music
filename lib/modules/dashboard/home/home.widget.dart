import 'package:flutter/material.dart';
import 'package:wynk_music/share/carousel.dart';
import 'package:wynk_music/share/cartegory_song_list.dart';
import 'package:wynk_music/share/category_album_list.dart';
import 'package:wynk_music/share/artist_list.dart';
import 'package:wynk_music/share/music_language.dart';
import 'package:wynk_music/share/from_my_music.dart';
import 'package:wynk_music/share/quick_settings.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 10, bottom: 70),
      child: Column(
        children: <Widget>[
          AppBar(
            leading: Icon(
                Icons.music_note
            ),
            title: Text('Home'),
            centerTitle: true,
            automaticallyImplyLeading: false,
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.all(0.0),
                icon: Icon(
                    Icons.search,
                    color: Colors.white
                ),
              )
            ],
          ),
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
          CategoryAlbumList(title: 'Top Playlist'),
          SizedBox(height: 25),
          ArtistList(title: 'Recommended Artists'),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child:  FromMyMusic(),
          ),
          SizedBox(height: 30),
          MusicLanguage(),
          SizedBox(height: 30,),
          QuickSettings()
        ],
      ),
    );
  }
}
