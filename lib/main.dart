/*
 * App: MemoryDiary
 * Purpose: This app let you  keep track and note down your memorable events that occur everyday.
 * Developer: Johnny Lyimo
 * Technologies Used: Hive Database
 * CreatedOn: March 7, 2021
 */

import 'package:flutter/material.dart';
import 'package:memory_diary/screens/home.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // initialize hive
  await Hive.initFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MemoryDiary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
