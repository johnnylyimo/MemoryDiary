import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:memory_diary/screens/edit_memory.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Box<String> MemoryBox;

  @override
  void initState() {
    super.initState();
    MemoryBox = Hive.box('memory');
  }

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
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ValueListenableBuilder(
                    valueListenable: MemoryBox.listenable(),
                    builder: (context, Box<String> box, _) {
                      return MemoryBox.length != 0
                          ? ListView.builder(
                              itemCount: box.length,
                              itemBuilder: (context, index) {
                                var memories = MemoryBox.toMap();
                                return Card(
                                  child: ListTile(
                                    leading: Icon(Icons.notes),
                                    title: Text(
                                      memories.values.elementAt(index),
                                      maxLines: 2,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => EditMemory(
                                            memory: memories.values
                                                .elementAt(index),
                                            memoryKey:
                                                memories.keys.elementAt(index),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            )
                          : Text(
                              'No Memory\nAdd your memory by click plus button below');
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
