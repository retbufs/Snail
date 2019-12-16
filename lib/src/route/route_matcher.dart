import 'dart:collection';
import 'dart:mirrors';

import '../../snail.dart';

//路由解析
class RouteMatcher {
  static const Map<String, Route> _routes = <String, Route>{};
  static const Map<String, List<Route>> _hooks = <String, List<Route>>{};
  final Map<String, List<MethodMirror>> _classMethodPool = HashMap();
  final Map<ClassMirror, Object> _controllerPool = HashMap();

  factory RouteMatcher() {
    return RouteMatcher._internal();
  }

  RouteMatcher._internal();

  Future<void> add_route(Route route) async {
    var httpMethod = route.httpMethod;
    var path = route.path;
    var controller = route.targetType;
    return  addRouteAll(httpMethod, path, controller: controller);
  }
  Future<void> addRouteAll(HttpMethod httpMethod, String path,
      {Object controller,
      ClassMirror controllerType,
      MethodMirror method}) async {
  }
}
