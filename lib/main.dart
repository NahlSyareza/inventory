import 'package:flutter/material.dart';
import 'package:learning_project/widgets/home/home.dart';

void main() => runApp(MaterialApp(home: HomeWidgetLess()));

class TestWidgetFul extends StatefulWidget {
  const TestWidgetFul({super.key});

  @override
  State<TestWidgetFul> createState() => _TestWidgetFul();
}

class _TestWidgetFul extends State<TestWidgetFul> {
  int counter = 0;
  String nomen = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Test'))),
      body: Column(
        children: [
          Container(child: Center(child: Text('$counter'))),
          Container(child: Center(child: Text('$nomen'))),
          TextButton(
            onPressed: () {
              setState(() {
                counter++;
                if (counter % 2 == 0) {
                  nomen = "Taruomaru";
                } else {
                  nomen = "Haraumaru";
                }
              });
            },
            child: Center(child: Text('Clicker')),
          ),
        ],
      ),
    );
  }
}
