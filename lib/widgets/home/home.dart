import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learning_project/widgets/options/services.dart';
import 'package:learning_project/widgets/options/report.dart';

class HomeWidgetLess extends StatelessWidget {
  String appName = "Home";
  bool isDarkMode = false;
  Color? appBarColor = Colors.blue[700];

  final Map<String, dynamic> dummyData = {
    "name": "Nahl Syareza",
    "balance": 0.0,
  };

  @override
  Widget build(BuildContext context) {
    HomeComponents g = HomeComponents();
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.grey[800] : Colors.grey[300],
      appBar: g.appBar(appBarColor, appName),
      body: Column(
        children: [
          g.balanceBarFrame(dummyData),
          g.accountManagementBar(),
          g.infoBar(),
          g.processStatusBar(),
          g.optionsGrid(context),
        ],
      ),
    );
  }
}

class HomeComponents {
  Container infoBar() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.lightBlue[800],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 40),
          child: Center(
            child: Text("COMPANY_NAME", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> processStatusBarE = [
    {"id": "1", "display": "STATE_1"},
    {"id": "2", "display": "STATE_2"},
    {"id": "3", "display": "STATE_3"},
  ];

  Container accountManagementBar() {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Icon(Icons.exit_to_app, color: Colors.red[800]),
                ),
              ),
              Expanded(
                flex: 2,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orangeAccent,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'Owner',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container processStatusBar() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: processStatusBarE.map((e) {
          return Expanded(
            child: Container(
              color: Colors.red[400],
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              margin: EdgeInsets.all(5),
              // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              child: Text(e['display'], style: TextStyle(color: Colors.white)),
            ),
          );
        }).toList(),
      ),
    );
  }

  Container copyrightBar() {
    return Container(
      color: Colors.red[200],
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Center(
        child: Text(
          "copyright © COMPANY_NAME 20XX",
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }

  AppBar appBar(appBarColor, appName) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Center(
        child: Text(appName, style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Row balanceBarFrame(d) {
    return Row(
      children: <Widget>[
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blue[800],
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20.0),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              // margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: balanceBar(d),
            ),
          ),
        ),
      ],
    );
  }

  Row balanceBar(d) {
    double custBalance = d['balance'] ?? -1;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Text(
            "Balance: " + custBalance.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  List<Map<String, dynamic>> optionsGridE = [
    {"id": 0, "icon": Icons.add_business, "text": "Services"},
    {"id": 1, "icon": Icons.ad_units_sharp, "text": "Report"},
    {"id": 2, "text": "OPTION_2"},
    {"id": 3, "text": "OPTION_3"},
    {"id": 4, "text": "OPTION_4"},
    {"id": 5, "text": "OPTION_5"},
    {"id": 6, "text": "OPTION_6"},
    {"id": 7, "text": "OPTION_7"},
    {"id": 8, "text": "OPTION_8"},
  ];

  Container optionsGrid(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        children: optionsGridE.map((e) {
          return Container(
            margin: EdgeInsets.all(5),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextButton(
                onPressed: () {
                  switch (e['id']) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServiceWidgetLess(),
                        ),
                      );
                      break;

                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReportWidgetLess(),
                        ),
                      );
                      break;

                    default:
                      break;
                  }

                  if (e['id'] == 0) {}
                },
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Icon(e['icon'] ?? Icons.no_encryption, size: 40),
                    ),
                    Expanded(flex: 1, child: Text(e['text'] ?? "OPTION")),
                  ],
                ),
                // label: Text(e['display']),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Row loggedInfobar() {
    return Row(children: []);
  }
}
