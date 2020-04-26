import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 10, bottom: 70),
      child: Column(
          children: <Widget>[
            AppBar(
              leading: Icon(
                  Icons.music_note
              ),
              title: Text('My Account'),
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
