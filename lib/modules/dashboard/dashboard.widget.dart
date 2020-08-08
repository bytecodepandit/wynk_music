import 'package:flutter/material.dart';
import 'package:wynk_music/modules/dashboard/widgets/music_handler.dart';
import 'package:wynk_music/modules/dashboard/home/home.widget.dart';
import 'package:wynk_music/modules/dashboard/my_account/my_account.widget.dart';
import 'package:wynk_music/modules/dashboard/my_music/my_music.widget.dart';
import 'package:wynk_music/modules/dashboard/updates/update.widget.dart';
import 'package:wynk_music/modules/dashboard/radio/radio.widget.dart';
import 'package:wynk_music/modules/dashboard/play_list_profile/play_list_profile.widget.dart';



class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  int _selectedIndex1 = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedIndex1 = index == 4 ? 5 : index;
    });
  }
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static  List<Widget> _widgetOptions = <Widget>[
    Home(),
    MyMusic(),
    MyRadio(),
    Updates(),
    MyAccount(),
    PlayListProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:(MediaQuery.of(context).size.width),
        child: Stack(
          children: <Widget>[
           Column(
             children: <Widget>[
               Expanded(
                 child: SingleChildScrollView(
                   child:_widgetOptions.elementAt(_selectedIndex1),
                 ),
               )
             ],
           ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: MusicHandler(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home',
            style: TextStyle(
              fontSize: 12
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            title: Text('My Music',
                style: TextStyle(
                    fontSize: 12
                )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio),
            title: Text('Radio',
                style: TextStyle(
                    fontSize: 12
                )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            title: Text('Updates',
                style: TextStyle(
                    fontSize: 12
                )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('My Account',
                style: TextStyle(
                    fontSize: 12
                )),
          ),

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}