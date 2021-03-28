import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:heimdal/src/routes/routes.dart';
import 'package:heimdal/src/pages/login_page.dart';

void main() async {
  //****** NEEDED TO INTIALIZE FIREBASE + FLUTTER ********/
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HeimdalApp());
}

class HeimdalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //****** REQUIRED FOR LOCALE IN COMPONENTS ********/
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],
      /********************************************/
      title: 'Heimdal App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => LoginPage());
      },
    );
  }
}
