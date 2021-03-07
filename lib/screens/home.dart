import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Memory Diary'),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.blue.shade100,
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                      'WORD OF THE DAY\nToday will be better than yesterday'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
