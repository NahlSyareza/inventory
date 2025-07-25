import 'package:flutter/material.dart';
import 'package:learning_project/widgets/home/main.dart';

void main() => runApp(MaterialApp(home: TestCard()));

class HomeWidget extends StatelessWidget {
  String appName = "APP_NAME";
  bool isDarkMode = false;
  Color? appBarColor = Colors.blue[700];

  final Map<String, dynamic> dummyData = {
    "name": "Nahl Syareza",
    "balance": 0.0,
  };

  @override
  Widget build(BuildContext context) {
    // print(dummyData);
    Gadgets g = Gadgets();
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.grey[800] : Colors.grey[200],
      appBar: g.appBar(appBarColor, appName),
      body: Column(
        children: [
          g.balanceBarFrame(dummyData),
          g.infoBar(),
          Expanded(flex: 2, child: g.processStatusBar()),
          Expanded(flex: 16, child: g.optionsGrid()),
          Expanded(flex: 1, child: g.copyrightBar()),
        ],
      ),
    );
  }
}

class TestCard extends StatefulWidget {
  const TestCard({super.key});

  @override
  State<TestCard> createState() => _TestCardState();
}

class _TestCardState extends State<TestCard> {
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
              // counter++;
            },
            child: Center(child: Text('Clicker')),
          ),
        ],
      ),
    );
  }
}

class ServicesListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
