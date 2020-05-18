import 'package:flutter/material.dart';


class MusicLanguage extends StatelessWidget {

  final List<CardLanguage> cardLangList = [
    CardLanguage(isActive: true, backgroundImageUrl: 'https://static.toiimg.com/photo/65161770.cms', langName: 'Hindi - हिन्दी'),
    CardLanguage(isActive: false, backgroundImageUrl: 'https://static.toiimg.com/photo/65161770.cms', langName: 'Telugu - తెలుగు'),
    CardLanguage(isActive: false, backgroundImageUrl: 'https://static.toiimg.com/photo/65161770.cms', langName: 'English'),
    CardLanguage(isActive: false, backgroundImageUrl: 'https://static.toiimg.com/photo/65161770.cms', langName: 'Punjabi - ਪੰਜਾਬੀ'),
    CardLanguage(isActive: false, backgroundImageUrl: 'https://static.toiimg.com/photo/65161770.cms', langName: 'Tamil - தமிழ்'),
    CardLanguage(isActive: true, backgroundImageUrl: 'https://static.toiimg.com/photo/65161770.cms', langName: 'Marathi - मराठी'),
    CardLanguage(isActive: true, backgroundImageUrl: 'https://static.toiimg.com/photo/65161770.cms', langName: 'Bengali - বাংলা'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Music Language', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
              GestureDetector(
                onTap: () {},
                child: Text('Hide', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12)),
              )
            ],
          ),
          SizedBox(height: 10,),
          Wrap(
            runSpacing: 5.0,
            spacing: 5.0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: cardLangList.map((elem) => elem).toList(),
          )
        ],
      ),
    );
  }
}







class CardLanguage extends StatelessWidget {
  final bool isActive;
  final String backgroundImageUrl;
  final String langName;
  CardLanguage({this.isActive, this.backgroundImageUrl, this.langName});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      child: ConstrainedBox(
        constraints: BoxConstraints(
            maxWidth: 188
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: isActive ? BoxDecoration(
                color: Colors.blue,
            ) : BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.colorBurn),
              image: NetworkImage('$backgroundImageUrl'),
                  fit: BoxFit.cover
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('$langName', style: TextStyle(color: Colors.white)),
                isActive ? SizedBox(
                  height: 20,
                  width: 15,
                  child: IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(0.0),
                    icon: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ): SizedBox( height: 20,
                  width: 20)
              ],
            )
        ),
      ),
    );
  }
}

