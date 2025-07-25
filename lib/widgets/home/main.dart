import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Gadgets {
  Row infoBar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.lightBlue[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 40),
                child: Center(
                  child: Text(
                    "COMPANY_NAME",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Map<String, dynamic>> processStatusBarE = [
    {"id": "1", "display": "STATE_1"},
    {"id": "2", "display": "STATE_2"},
    {"id": "3", "display": "STATE_3"},
  ];

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
    {"id": 1, "display": "OPTION_1"},
    {"id": 2, "display": "OPTION_2"},
    {"id": 3, "display": "OPTION_3"},
    {"id": 4, "display": "OPTION_4"},
    {"id": 5, "display": "OPTION_5"},
    {"id": 6, "display": "OPTION_6"},
    {"id": 7, "display": "OPTION_7"},
    {"id": 8, "display": "OPTION_8"},
    {"id": 9, "display": "OPTION_9"},
  ];

  Container optionsGrid() {
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
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextButton.icon(
                onPressed: () {},
                label: Text(e['display']),
                // icon: Icon(Icons.ac_unit_sharp),
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
