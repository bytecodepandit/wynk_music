import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:marquee/marquee.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicHandlerFullView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
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
            )
          ],
        ),
      ),
    );
  }
}



class MusicController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Material(
            child: PlayerSlider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.transform
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

