import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, '/new_memory'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blue.shade100,
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'WORD OF THE DAY\nToday will be better than yesterday',
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'Highlights',
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
