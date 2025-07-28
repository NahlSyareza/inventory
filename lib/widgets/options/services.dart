import 'package:flutter/material.dart';

class ServiceWidgetLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ServiceWidgetComponents w = new ServiceWidgetComponents();
    bool isDarkMode = false;
    Color? appBarColor = Colors.blue[700];

    List<String> list = ["Missile Level 1", "Missile Level 2", "Missile Level 3", "Missile Level 4"];

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.grey[800] : Colors.grey[300],
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Center(
          child: Text("Services", style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Column(
        children: [
          w.serviceBar('Missiles'),
          w.servicesList(list),
          // SizedBox(height: 20),
          w.serviceBar('ENTRY_2'),
          w.servicesList(List.empty()),
        ],
      ),
    );
  }
}

class ServiceWidgetComponents {
  Row serviceBar(String text) {
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

  ListView servicesList(List<dynamic> l) {
    return ListView(
      padding: const EdgeInsets.all(4),
      shrinkWrap: true,
      children: l.map((e) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          color: Colors.grey[200],
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 0),
          child: Row(
            children: [
              Expanded(flex: 1, child: Icon(Icons.rocket)),
              Expanded(flex: 9, child: Text(e)),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({super.key});

  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
