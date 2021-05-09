/*
 * App: MemoryDiary
 * Purpose: This app let you  keep track and note down your memorable events that occur everyday.
 * Developer: Johnny Lyimo
 * Technologies Used: Hive Database
 * CreatedOn: March 7, 2021
 */

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:memory_diary/screens/new_memory.dart';
import 'package:memory_diary/screens/splash_screen.dart';

void main() async {
  // Before execute runApp execute following codes below
  WidgetsFlutterBinding.ensureInitialized();

  // initialize hive
  await Hive.initFlutter();
  await Hive.openBox<String>('memory');
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
        primarySwatch: Colors.purple,
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.purple.shade100,
      ),
      routes: {
        '/': (_) => SplashScreen(),
        '/new_memory': (_) => NewMemory(),
      },
      initialRoute: '/',
    );
  }
}
