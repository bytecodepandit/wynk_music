import 'package:flutter_modular/flutter_modular.dart';
import 'package:wynk_music/modules/splash/splash.dart';
import 'package:wynk_music/modules/dashboard/dashboard.widget.dart';
import 'package:wynk_music/modules/music_handler_full_view/music_handler_full_view.widget.dart';

class AppRoute {
  List<Router> get routers => [
    Router("/", child: (_, args) => Splash()),
    Router("/dashboard", child: (_, args) => Dashboard()),
    Router("/music_player", child: (_, args) => MusicHandlerFullView(), transition: TransitionType.downToUp),
  ];
}