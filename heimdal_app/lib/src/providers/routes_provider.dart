import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _RouteProvider {
  List<dynamic> routes = [];

  _RouteProvider() {
    loadRoutes();
  }

  Future<List<dynamic>> loadRoutes() async {
    final resp = await rootBundle.loadString('data/routes.json');
    Map routesMap = json.decode(resp);
    routes = routesMap['routes'];
    return routes;
  }
}

final routeProvider = new _RouteProvider();
