
import 'dart:io';

import '../../snail.dart';

abstract class Request{
  Request initPathParams(Route route);
  String host;
  String remoteAddress;
  String uri;
  String url;

  String userAgent(){
    return HttpHeaders.userAgentHeader;
  }
  String protocol();
}