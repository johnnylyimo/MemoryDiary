import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive/hive.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var box = Hive.box('test');
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
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.blue.shade100,
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'WORD OF THE DAY\nToday will be better than yesterday',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Highlights',
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemCount: box.length,
                      itemBuilder: (context, index) {
                        return Card();
                      },
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
