import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //   Future.delayed(Duration(seconds: 3), () {
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => Home(),
    //       ),
    //     );
    //   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Text(
              'Memory Diary',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlutterLogo()
          ],
        ),
      )),
    );
  }
}
