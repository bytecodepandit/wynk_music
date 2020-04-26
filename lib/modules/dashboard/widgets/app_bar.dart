import 'package:flutter/material.dart';

class DashboardAppBar {
  final BuildContext context;
  DashboardAppBar({this.context});
  final AppBar appBar =  AppBar(
    leading: Icon(
        Icons.music_note
    ),
    title: Text('Home'),
    centerTitle: true,
    automaticallyImplyLeading: false,
    actions: <Widget>[
      IconButton(
        icon: Icon(
            Icons.search,
            color: Colors.white
        ),
      )
    ],
  );
}