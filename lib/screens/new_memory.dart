import 'package:flutter/material.dart';

class NewMemory extends StatefulWidget {
  const NewMemory({Key key}) : super(key: key);

  @override
  _NewMemoryState createState() => _NewMemoryState();
}

class _NewMemoryState extends State<NewMemory> {
  var new_memoryController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('New Memory'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: new_memoryController,
                decoration: InputDecoration(
                  labelText: 'Write you memory here..',
                ),
                validator: (val) => val.isNotEmpty ? null : 'Enter your memory',
              ),
              SizedBox(
                height: 30.0,
              )
              ElevatedButton(
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
