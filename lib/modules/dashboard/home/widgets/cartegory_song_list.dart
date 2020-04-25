import 'package:flutter/material.dart';

class CategorySongList extends StatelessWidget {
  final String title;
  final List<CardSong> songList = [
    CardSong(
      imageUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1587711299/srch_zeemusic_INZ031407287.jpg',
      title: 'Teri Mitti',
    ),
    CardSong(
      imageUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_believe/music/srch_believe_A10320WT033713203P.jpg',
      title: 'Pyar Karona',
    ),
    CardSong(
      imageUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1587708309/53323940.jpg',
      title: 'Bharat Ek Saath Hai',
    ),
    CardSong(
      imageUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_universalmusic/music/1586221575/srch_universalmusic_00602508931710-INUM72000011.jpg',
      title: 'Aaj Bhi',
    ),
    CardSong(
      imageUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1587360846/53203631.jpg',
      title: 'Bewafai',
    ),
    CardSong(
      imageUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_believe/music/srch_believe_A10320WT033704041T.jpg',
      title: 'Afsos',
    ),
    CardSong(
      imageUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_believe/music/srch_believe_A10320WT0336484980.jpg',
      title: 'Fikar',
    ),
    CardSong(
      imageUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1587633259/srch_venus_FR-2X4-20-71864.jpg',
      title: 'Dilli Ki Ladki',
    ),
    CardSong(
      imageUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1586935268/srch_saregama_INH102002154.jpg',
      title: 'Quarantine Love',
    ),
    CardSong(
      imageUrl: 'https://img.wynk.in/unsafe/150x150/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/srch_believe/music/srch_believe_A10320WT0336258813.jpg',
      title: 'Radhe',
    )
  ];
  CategorySongList({this.title});
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


class CardSong extends StatelessWidget {
  final String imageUrl;
  final String title;
  CardSong({this.imageUrl, this.title});
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
                          width: 80,
                          height: 80,
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
                 width: 80,
                 child: Text('$title', overflow: TextOverflow.ellipsis),
               )
           ],
        )
      ),
    );
  }
}
