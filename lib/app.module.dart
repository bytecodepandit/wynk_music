import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wynk_music/app.widget.dart';
import 'package:wynk_music/app.route.dart';

class AppModule extends MainModule {

  // here will be any class you want to inject into your project (eg bloc, dependency)
  @override
  List<Bind> get binds => [];

  // here will be the routes of your module
  @override
  List<Router> get routers => AppRoute().routers;

// add your main widget here
  @override
  Widget get bootstrap => AppWidget();
}