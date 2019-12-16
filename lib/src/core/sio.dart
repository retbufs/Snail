import 'package:Snail/snail.dart';
import 'package:Snail/src/route/handler.dart';
import 'package:Snail/src/route/route_matcher.dart';

class Sio {
  final RouteMatcher routeMatcher = RouteMatcher();

  static Sio of() {
    return Sio();
  }
  //添加get请求方式
  Sio get(String path, RouteHandler handler) {
    return this;
  }
}
