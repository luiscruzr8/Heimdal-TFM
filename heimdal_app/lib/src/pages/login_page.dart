import 'package:flutter/material.dart';
import 'package:heimdal/src/providers/auth_provider.dart';
import 'package:heimdal/src/pages/map_page.dart';
import 'package:heimdal/src/utils/app_colors.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getColor('jet_grey'),
      body: Container(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/heimdal-logo.png"),
            SizedBox(height: 100),
            Text(
              'Overwatch the people you care the most.',
              style: TextStyle(fontSize: 18, color: Color(0xFFFFE100)),
            ),
            SizedBox(height: 100),
            _signInWithGoogleButton(),
            SizedBox(height: 10),
            _signInAnnonimously(),
          ],
        ),
      )),
    );
  }

  Widget _signInWithGoogleButton() {
    return _generateButtonWithIcon("assets/g-logo.png", 'Sign in with Google',
        () {
      signInWithGoogle().whenComplete(() {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return MapPage();
            },
          ),
        );
      });
    });
  }

  Widget _signInAnnonimously() {
    return _generateButtonWithIcon(
        "assets/heimdal-logo.png", 'Sign in annonimously', () {
      signInAnnonimously().whenComplete(() {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return MapPage();
            },
          ),
        );
      });
    });
  }

  Widget _generateButtonWithIcon(
      String imgPath, String buttonText, Function onPressedFunction) {
    return FlatButton(
        height: 50,
        minWidth: 300,
        color: getColor('golden_yellow'),
        textColor: getColor('rich_black'),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage(imgPath), height: 35.0),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
        onPressed: onPressedFunction);
  }
}
