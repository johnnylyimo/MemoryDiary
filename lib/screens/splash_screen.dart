import 'package:flutter/material.dart';
import 'package:memory_diary/screens/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Memory Diary',
              style: TextStyle(
                fontSize: 42.0,
              ),
            ),
            FlutterLogo(
              size: 200.0,
              style: FlutterLogoStyle.markOnly,
            ),
            Text(
              'Remember the good times',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
