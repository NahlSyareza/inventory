import 'package:flutter/material.dart';
import 'package:learning_project/widgets/home/home.dart';

class ReportWidgetLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color? appBarColor = Colors.blue[700];

    List<Map<String, dynamic>> cat = [
      {"no_nota": "ABC111", "nama": "ABC", "biaya": "30.000"},
      {"no_nota": "DEF111", "nama": "DEF", "biaya": "25.000"},
      // {},
    ];

    List<Map<String, dynamic>> crane = [
      {"no_nota": "TEMP_0", "nama": "ART_0", "biaya": "LYR_0"},
      {"no_nota": "TEMP_1", "nama": "ART_1", "biaya": "LYR_1"},
      {"no_nota": "TEMP_2", "nama": "ART_2", "biaya": "LYR_2"},
      {"no_nota": "TEMP_3", "nama": "ART_3", "biaya": "LYR_3"},
      {"no_nota": "TEMP_4", "nama": "ART_4", "biaya": "LYR_4"},
      // {},
    ];

    ReportComponents c = ReportComponents();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Center(
          child: Text('Report', style: TextStyle(color: Colors.white)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeWidgetLess()),
          );
        },
        child: Icon(Icons.home_filled),
      ),
      body: ListView(
        children: [
          c.dateBar('25/07/2025'),
          SizedBox(height: 2),
          c.transactionsList(cat),
          SizedBox(height: 2),
          c.dateBar('24/07/2025'),
          SizedBox(height: 2),
          c.transactionsList(crane),
          SizedBox(height: 2),
          c.dateBar('23/07/2025'),
          SizedBox(height: 2),
          c.transactionsList(cat),
          SizedBox(height: 2),
          c.dateBar('22/07/2025'),
          SizedBox(height: 2),
          c.transactionsList(crane),
          SizedBox(height: 2),
        ],
      ),
    );
  }
}

class ReportWidgetFul extends StatefulWidget {
  const ReportWidgetFul({super.key});

  @override
  State<ReportWidgetFul> createState() => _ReportWidgetFulState();
}

class _ReportWidgetFulState extends State<ReportWidgetFul> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ReportComponents {
  Row dateBar(String text) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: Colors.blue[800],
            child: Text(text, style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  Column transactionsList(List l) {
    int descLength = 3;
    return Column(
      children: l.map((e) {
        return Container(
          color: Colors.grey[200],
          margin: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Icon(Icons.monetization_on, color: Colors.yellow[700]),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'No. Nota:',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Expanded(
                          flex: descLength,
                          child: Text(
                            e['no_nota'],
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox.fromSize(size: Size(0, 10)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Nama:',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Expanded(
                          flex: descLength,
                          child: Text(
                            e['nama'],
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox.fromSize(size: Size(0, 10)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Biaya:',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Expanded(
                          flex: descLength,
                          child: Text(
                            e['biaya'],
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
