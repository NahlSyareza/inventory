import 'package:flutter/material.dart';
import 'package:learning_project/widgets/home/home.dart';

class ReportWidgetLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color? appBarColor = Colors.blue[700];

    List<Map<String, dynamic>> cat = [
      {"judul": "Nemen", "artis": "NDX AKA", "lirik": "Revenue"},
      {"judul": "Tresno Tekan Mati", "artis": "NDX AKA", "lirik": "Tax"},
      // {},
    ];

    List<Map<String, dynamic>> crane = [
      {"judul": "TEMP_0", "artis": "ART_0", "lirik": "LYR_0"},
      {"judul": "TEMP_1", "artis": "ART_1", "lirik": "LYR_1"},
      {"judul": "TEMP_2", "artis": "ART_2", "lirik": "LYR_2"},
      {"judul": "TEMP_3", "artis": "ART_3", "lirik": "LYR_3"},
      {"judul": "TEMP_4", "artis": "ART_4", "lirik": "LYR_4"},
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
    return Column(
      // shrinkWrap: true,
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
                            'Judul:',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            e['judul'],
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
                            'Artis:',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            e['artis'],
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
                            'Lirik:',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            e['lirik'],
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
