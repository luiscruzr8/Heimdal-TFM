import 'package:flutter/material.dart';

import 'package:heimdal/src/pages/home_page.dart';
import 'package:heimdal/src/pages/login_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'login': (BuildContext context) => LoginPage(),
  };
}
