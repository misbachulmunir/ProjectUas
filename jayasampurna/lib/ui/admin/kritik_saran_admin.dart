import 'package:flutter/material.dart';

class KritikSaranAdmin extends StatefulWidget {
  @override
  _KritikSaranAdminState createState() => _KritikSaranAdminState();
}

class _KritikSaranAdminState extends State<KritikSaranAdmin> {
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
