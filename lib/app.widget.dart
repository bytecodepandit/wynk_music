import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:wynk_music/app.theme.dart';
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color(0XFFfc3318));
    return MaterialApp(
      // set your initial route
      theme: AppTheme().theme,
      initialRoute: "/dashboard",
      // add Modular to manage the routing system
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
