

import 'dart:indexed_db';

import '../../snail.dart';

abstract class RouteHandler{
  void handle(Request request, Response response);
}


