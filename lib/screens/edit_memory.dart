import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

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
  Box<String> box = Hive.box('memory');

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
    memoryController.text = widget.memory;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Edit memory'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: memoryController,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    labelText: 'Be free to Edit this  memory',
                  ),
                  validator: (val) =>
                      val.isNotEmpty ? null : 'Enter your memory',
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text('Delete'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.red,
                        ),
                      ),
                      onPressed: () {
                        box.delete(widget.memoryKey);
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    ElevatedButton(
                      child: Text('Update'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue,
                        ),
                      ),
                      onPressed: () {
                        box.put(widget.memoryKey, memoryController.text);
                        Navigator.pop(context);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
