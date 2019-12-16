import 'package:Snail/snail.dart';
import 'package:Snail/src/core/sio.dart';

class WebContext {
  static String _contextPath = '/';
  static String _seesionKey;
  Request _request;
  Response _response;
  static Route _route;
  static Sio _tio;

  WebContext(this._request, this._response);

  static void init(Sio tio, String contextPath) {
    WebContext._tio = tio;
    WebContext._contextPath = contextPath;
  }

  static String get contextPath => _contextPath;

  static set contextPath(String value) {
    _contextPath = value;
  }

  Request get request => _request;

  set request(Request value) {
    _request = value;
  }

  static Route get route => _route;

  static set route(Route value) {
    _route = value;
  }

  static String get seesionKey => _seesionKey;

  static set seesionKey(String value) {
    _seesionKey = value;
  }

  Response get response => _response;

  set response(Response value) {
    _response = value;
  }
}
