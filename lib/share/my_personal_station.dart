import 'package:flutter/material.dart';
import 'dart:ui';


class MyPersonalStation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('My Personal Station', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 15),
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/my_personal_station_bg.jpg'),
                    fit: BoxFit.fill,
                  ),

                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 30,),
                      Image(
                        image: AssetImage('assets/images/icons/play_red.png'),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 30,),
                      Text('Non-Stop music based on your listeing history', style: TextStyle(color: Colors.white, fontSize: 14),)
                    ],
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
