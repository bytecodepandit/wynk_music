import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomeCarousel extends StatelessWidget {
  final List<String> imgList = [
    'https://img.wynk.in/unsafe/720x251/filters:no_upscale():format(webp)/https://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/Romance-Top-40--International-720x251.png',
    'https://img.wynk.in/unsafe/720x251/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/Wynk-Podcast-hnpl.png',
    'https://img.wynk.in/unsafe/720x251/filters:no_upscale():format(webp)/https://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/Romance-Top-40--International-720x251.png',
    'https://img.wynk.in/unsafe/720x251/filters:no_upscale():format(webp)/https://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/World-Of-Soundtracks-1440x502aa.png',
    'https://img.wynk.in/unsafe/720x251/filters:no_upscale():format(webp)/https://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/Birthday-Shoutout--Arijit-Singh-720x251.png',
    'https://img.wynk.in/unsafe/720x251/filters:no_upscale():format(webp)/https://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/Catchy-Songs-Alert-1440x502.png'
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Wynk Top Picks', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            clipBehavior: Clip.antiAlias,
            child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1.0,
                  aspectRatio: 16/5
              ),
              items: imgList.map((item) => Container(
                child: Center(
                    child: Image.network(item, fit: BoxFit.cover, width: 1000)
                ),
              )).toList(),
            ),
          )
        ],
      ),
    );
  }
}
