import 'package:flutter_modular/flutter_modular.dart';
import 'package:wynk_music/modules/splash/splash.dart';

class AppRoute {
  List<Router> get routers => [
    Router("/", child: (_, args) => Splash()),
  ];
}