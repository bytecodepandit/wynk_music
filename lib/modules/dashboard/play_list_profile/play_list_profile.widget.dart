import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PlayListProfile extends StatefulWidget {
  @override
  _PlayListProfileState createState() => _PlayListProfileState();
}

class _PlayListProfileState extends State<PlayListProfile> {

  List<SongListItem> songList = [
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1587711299/srch_zeemusic_INZ031407287.jpg', songName: 'Teri Mitti', artistName: 'B Prag', isNewSong: true),
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1463550805/srch_zeemusic_ZMC00001_3.jpg', songName: 'Saved Queue', artistName: 'Rani Mukharji', isNewSong: true),
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_universalmusic/music/1579050936/srch_universalmusic_00602508676666-INUM71900060.jpg', songName: 'Nindra', artistName: 'IKKA - Nindra', isNewSong: true),
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/update/1577355291/srch_hungama_50838057.jpg', songName: 'Garmi (From Street Dancer 3D) (feat. Varun Dhawan)', artistName: 'Neha Kakkar - Garmi (From Street Dancer 3D)', isNewSong: false),
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_believe/music/srch_believe_A10320WT0336258813.jpg', songName: 'Radhe (From Songs of Faith)', artistName: 'Amit Trivedi - Radhe (From Songs of Faith)', isNewSong: false),
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_sonymusic/music/update/1589090100194/srch_sonymusic_A10328E0009591785M.jpg', songName: 'Radhe (From Songs of Faith)', artistName: 'Amit Trivedi - Radhe (From Songs of Faith)', isNewSong: false),
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_sonymusic/music/srch_sonymusic_A10328E00061548127.jpg', songName: 'Radhe (From Songs of Faith)', artistName: 'Amit Trivedi - Radhe (From Songs of Faith)', isNewSong: false),
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1587633259/srch_venus_FR-2X4-20-71864.jpg', songName: 'Mummy', artistName: 'Vayu - Mummy', isNewSong: false),
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_universalmusic/music/1578358093/srch_universalmusic_00602508634147-INUM71900058.jpg', songName: 'Kehndi Haan Kehndi Naa', artistName: 'Sukriti Kakar - Kehndi Haan Kehndi Naa', isNewSong: false),
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_sonymusic/music/srch_sonymusic_A10328E0008095333D.jpg', songName: 'Tu Hi Hai', artistName: 'Amit Trivedi - Dear Zindagi (Original Motion Picture Soundtrack)', isNewSong: false),
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_believe/music/srch_believe_A10320WT0339030089.jpg', songName: 'Haal E Dil', artistName: 'Sundeep Gosswami - Haal E Dil', isNewSong: false),
    SongListItem(thumbnailUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/srch_hungama_287525.jpg', songName: 'Tu Bhi Royega', artistName: 'Jyotica Tangri - Tu Bhi Royega', isNewSong: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: Stack(children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              proflieImageContainer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 30),
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0)),                        color: Colors.white,
                        onPressed: () {},
                        elevation: 3.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              EvilIcons.arrow_down,
                              color: Color(0XFF1b9dcb),
                              size: 35,
                            ),
                            SizedBox(width: 10),
                            Text('Download All', style: TextStyle(color: Color(0XFF1b9dcb), fontSize: 16))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 30),
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0)),
                        color: Colors.white,
                        onPressed: () {},
                        elevation: 3.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              EvilIcons.play,
                              color: Color(0XFF1b9dcb),
                              size: 35,
                            ),
                            SizedBox(width: 10),
                            Text('Play All', style: TextStyle(color: Color(0XFF1b9dcb), fontSize: 16))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              songsList()
            ],
          ),
        )
      ])),
    );
  }

  Widget proflieImageContainer() {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1589437562/53621539.jpg'),
            fit: BoxFit.fill,
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Text('Wynk Top 100', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  Text('By Wynk Music', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(height: 15),
                  Text('182K Followers . 100 songs', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(height: 10),
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        width: 130,
                        decoration: BoxDecoration(
                          color:  Color(0XFF0088d0),
                          borderRadius: BorderRadius.all(Radius.circular(4.0))
                        ),
                        child: Center(
                          child: Text('Follow', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Positioned(
                        left: -10,
                        top: -2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child: Icon(
                            Icons.add_circle,
                            color:  Color(0XFF0088d0),
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget songsList() {
    return Container(
      padding: EdgeInsets.only(bottom: 60, left: 15, right: 15),
      child: Column(
        children: songList.length > 0 ? songList.map((song) => songListItem(song.thumbnailUrl, song.songName, song.artistName, song.isNewSong)).toList() : <Widget>[Text('No songs')],
      ),
    );
  }

  Widget songListItem(String thumbnailUrl, String songName, String artistName, bool isNewSong) {

    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.5),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey[100], width: 1.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(3.0)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(3.0)),
              child: Image(
                image: NetworkImage('$thumbnailUrl'),
                width: 50,
                height: 50,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Text('$songName', overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      isNewSong ? Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(4.0))
                        ),
                        padding: EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                        child: Text('ADDED', style: TextStyle(color: Colors.white, fontSize: 12)),
                      ): SizedBox(),
                      SizedBox(width: isNewSong ? 15 : 0),
                      Flexible(
                        child: Text(
                            '$artistName',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey, fontSize: 16)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 40,
                  child: IconButton(
                    icon: Icon(
                      EvilIcons.arrow_down,
                      color: Color(0XFF1b9dcb),
                      size: 35,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                  child: IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SongListItem {
  String thumbnailUrl;
  String songName;
  String artistName;
  bool isNewSong;

  SongListItem(
      {this.thumbnailUrl, this.songName, this.artistName, this.isNewSong});

  SongListItem.fromJson(Map<String, dynamic> json) {
    thumbnailUrl = json['thumbnailUrl'];
    songName = json['songName'];
    artistName = json['artistName'];
    isNewSong = json['isNewSong'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumbnailUrl'] = this.thumbnailUrl;
    data['songName'] = this.songName;
    data['artistName'] = this.artistName;
    data['isNewSong'] = this.isNewSong;
    return data;
  }
}
