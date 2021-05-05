import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class NewMemory extends StatefulWidget {
  const NewMemory({Key key}) : super(key: key);

  @override
  _NewMemoryState createState() => _NewMemoryState();
}

class _NewMemoryState extends State<NewMemory> {
  var memoryController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Box<String> box;

  @override
  void initState() {
    super.initState();
    box = Hive.box('memory');
  }

  @override
  void dispose() {
    super.dispose();
    memoryController.dispose();
  }

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
                autofocus: true,
                controller: memoryController,
                maxLines: 2,
                keyboardType: TextInputType.multiline,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'Write you memory here..',
                ),
                validator: (val) => val.isNotEmpty ? null : 'Enter your memory',
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  box.add(memoryController.text);
                  memoryController.clear();
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'New memory Added!',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
