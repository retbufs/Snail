import 'dart:collection';
import 'dart:mirrors';
import '../../snail.dart';

class Route {
  //请求方式
  HttpMethod _httpMethod;
  //请求路径
  String _path;
  //目标控制器对象
  Object _target;
  //反射对象
  ClassMirror _targetType;
  //方法反射对象
  MethodMirror _action;
  ///保存参数
  Map<String, String> _pathParams = HashMap();
  int _sort;
  Route() {
    _sort = int.parse('21E15');
  }



  Route.all(this._httpMethod, this._path, this._target, this._targetType,
      this._action);

  Route.of(this._httpMethod, this._path, this._target, this._targetType,
      this._action);

  HttpMethod get httpMethod => _httpMethod;

  set httpMethod(HttpMethod value) {
    _httpMethod = value;
  }

  Map<String, String> get pathParams => _pathParams;

  set pathParams(Map<String, String> value) {
    _pathParams = value;
  }

  int get sort => _sort;

  set sort(int value) {
    _sort = value;
  }

  MethodMirror get action => _action;

  set action(MethodMirror value) {
    _action = value;
  }

  ClassMirror get targetType => _targetType;

  set targetType(ClassMirror value) {
    _targetType = value;
  }

  Object get target => _target;

  set target(Object value) {
    _target = value;
  }

  String get path => _path;

  set path(String value) {
    _path = value;
  }

  String getAllPath() => '${_path}#${_httpMethod}';

  @override
  String toString() {
    return 'Route{_httpMethod: $_httpMethod, _path: $_path, _target: $_target, _targetType: $_targetType, _action: $_action, _sort: $_sort, _pathParams: $_pathParams}';
  }
}
