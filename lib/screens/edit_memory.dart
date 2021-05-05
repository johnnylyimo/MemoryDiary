import 'package:flutter/material.dart';

class EditMemory extends StatefulWidget {
  final String memory;
  final int memoryKey;
  const EditMemory({Key key, this.memory, this.memoryKey}) : super(key: key);

  @override
  _EditMemoryState createState() => _EditMemoryState();
}

class _EditMemoryState extends State<EditMemory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
