import 'package:flutter/material.dart';


class AlbumPlayList extends StatefulWidget {
  @override
  _AlbumPlayListState createState() => _AlbumPlayListState();
}

class _AlbumPlayListState extends State<AlbumPlayList>{
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
              title: Text('Album play list'),
              centerTitle: true,
              automaticallyImplyLeading: false,
              actions: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                      Icons.search,
                      color: Colors.white
                  ),
                )
              ],
            )
        ])
    );
  }
}
