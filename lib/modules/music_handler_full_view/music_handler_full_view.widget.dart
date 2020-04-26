import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:marquee/marquee.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:wynk_music/share/cartegory_song_list.dart';

class MusicHandlerFullView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: ClipPath(
                        clipper: OvalBottomBorderClipper(),
                        child: Container(
                            height: 200, color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 30),
                          SizedBox(
                              width: 300,
                              height: 20,
                              child: Material(
                                type: MaterialType.transparency,
                                child: Marquee(
                                  text: 'Some sample text that takes some space.',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),
                                  scrollAxis: Axis.horizontal,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  blankSpace: 20.0,
                                  velocity: 50.0,
                                  pauseAfterRound: Duration(seconds: 1),
                                  startPadding: 10.0,
                                  accelerationDuration: Duration(seconds: 1),
                                  accelerationCurve: Curves.linear,
                                  decelerationDuration: Duration(milliseconds: 500),
                                  decelerationCurve: Curves.easeOut,
                                ),
                              )),
                          SizedBox(height: 30),
                          Center(
                            child: Hero(
                              tag: 'ActiveSongImageThumb',
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: new Offset(1.0, 1.0),
                                        spreadRadius: 1.0,
                                        blurRadius: 2.0,
                                      )
                                    ]),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                  child: Image(
                                      image: NetworkImage(
                                          'https://img.wynk.in/unsafe/275x275/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/Romance-top-50-english-300x300.png'),
                                      width: 200,
                                      height: 200),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Center(
                  child: SizedBox(width: 300, child: MusicController()),
                ),
                SizedBox(height: 25),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: MusicPlayerOtherOptions(),
                  ),
                ) ,
                SizedBox(height: 35),
                CategorySongList(title: 'Raat Ke Humsafar'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


 // main player
class MusicController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Material(
            child: PlayerSlider(),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.shuffle
              ),
              Icon(
                  Icons.arrow_back_ios
              ),
              Icon(
                  Icons.play_circle_filled,
                color: Theme.of(context).primaryColor,
                size: 40,
              ),
              Icon(
                  Icons.arrow_forward_ios
              ),
              Icon(
                  Icons.repeat_one
              ),

            ],
          )
        ],
      ),
    );
  }
}

class PlayerSlider extends StatefulWidget {
  @override
  _PlayerSliderState createState() => _PlayerSliderState();
}

class _PlayerSliderState extends State<PlayerSlider> {
  Duration _duration = new Duration();

  Duration _position = new Duration();

  AudioPlayer advancedPlayer;

  AudioCache audioCache;
  void seekToSecond(int second){
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: _position.inSeconds.toDouble(),
        min: 0.0,
        max: _duration.inSeconds.toDouble(),
        activeColor: Colors.grey[700],
        inactiveColor: Colors.grey,
        onChanged: (double value) {
          setState(() {
            seekToSecond(value.toInt());
            value = value;
          });
        });
  }
}





// More options

class MusicPlayerOtherOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(6.0))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
             width: 50,
             child: FlatButton(onPressed: (){}, splashColor: Colors.transparent, highlightColor: Colors.transparent,padding: EdgeInsets.all(0.0), child: Column(children: <Widget>[Icon(Icons.share, color: Colors.black54, size: 16), SizedBox(height: 5), Text('Share', style: TextStyle(color: Colors.black54, fontSize: 12),)]))
          ),
          SizedBox(
              width: 65,
              child: FlatButton(onPressed: (){}, splashColor: Colors.transparent, highlightColor: Colors.transparent,padding: EdgeInsets.all(0.0), child: Column(children: <Widget>[Icon(Icons.file_download, color: Colors.black54,size: 16), SizedBox(height: 5),Text('Download', style: TextStyle(color: Colors.black54, fontSize: 12),)]))
          ),
          SizedBox(
              width: 65,
              child: FlatButton(onPressed: (){}, splashColor: Colors.transparent, highlightColor: Colors.transparent,padding: EdgeInsets.all(0.0), child: Column(children: <Widget>[Icon(Icons.call, color: Colors.black54,size: 16),SizedBox(height: 5), Text('HelloTune', style: TextStyle(color: Colors.black54, fontSize: 12),)]))
          ),
          SizedBox(
              width: 65,
              child: FlatButton(onPressed: (){}, splashColor: Colors.transparent, highlightColor: Colors.transparent,padding: EdgeInsets.all(0.0), child: Column(children: <Widget>[Icon(Icons.list, color: Colors.black54,size: 16), SizedBox(height: 5),Text('Playlist', style: TextStyle(color: Colors.black54, fontSize: 12),)]))
          ),
          SizedBox(
              width: 50,
              child: FlatButton(onPressed: (){}, splashColor: Colors.transparent, highlightColor: Colors.transparent,padding: EdgeInsets.all(0.0), child: Column(children: <Widget>[Icon(Icons.more_vert, color: Colors.black54,size: 16),SizedBox(height: 5), Text('More', style: TextStyle(color: Colors.black54, fontSize: 12),)]))
          )
        ],
      ),
    );
  }
}
