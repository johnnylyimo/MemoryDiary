import 'package:flutter/material.dart';

class EditMemory extends StatefulWidget {
  final String memory;
  final int memoryKey;
  const EditMemory({Key key, this.memory, this.memoryKey}) : super(key: key);

  @override
  _EditMemoryState createState() => _EditMemoryState();
}

class _EditMemoryState extends State<EditMemory> {
  var memoryController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var box = Hive.box('test');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Edit memory'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(),
        ),
      ),
    );
  }
}
