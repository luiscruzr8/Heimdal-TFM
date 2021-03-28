import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Home page'),
        leading: GestureDetector(
          onTap: () {
            print('pulsado menu');
          },
          child: Icon(Icons.menu),
        ),
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Page'),
            OutlineButton(
                child: Text('Login Page'),
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                }),
          ],
        ),
      ),
    );
  }
}
