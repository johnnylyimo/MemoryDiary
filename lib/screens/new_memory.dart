import 'package:flutter/material.dart';

class NewMemory extends StatefulWidget {
  const NewMemory({Key key}) : super(key: key);

  @override
  _NewMemoryState createState() => _NewMemoryState();
}

class _NewMemoryState extends State<NewMemory> {
  var new_memoryController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('New Memory'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
            ),
          ],
        ),
      ),
    );
  }
}
