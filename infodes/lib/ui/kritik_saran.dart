import 'package:flutter/material.dart';

class KritikSaran extends StatefulWidget {
  @override
  _KritikSaranState createState() => _KritikSaranState();
}

class _KritikSaranState extends State<KritikSaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kritik Dan Saran"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.orange[400], Colors.yellow[300]])),
        ),
      ),
    );
  }
}
