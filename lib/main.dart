import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyEditText(),
  ));
}

//credit to nishant
class MyEditText extends StatefulWidget {
  @override
  _MyEditTextState createState() => _MyEditTextState();
}

class _MyEditTextState extends State<MyEditText> {
  String results = '';

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using Edit_Text'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter text here....',
              ),
              onSubmitted: (String str) {
                setState(() {
                  results = results + '\n' + str;
                  controller.text = '';
                });
              },
              controller: controller,
            ),
            Text(results)
          ],
        ),
      ),
    );
  }
}
