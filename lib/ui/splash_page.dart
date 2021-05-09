import 'package:flutter/material.dart';
import 'package:inventory_management/ui/home_page/home_page.dart';

/// A page which is represented when user launches APP.
class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  static const routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Center(
                child: Image.asset(
                  'images/logo.jpg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
