import 'package:flutter/material.dart';
class DanaDesaAdmin extends StatefulWidget {
  @override
  _DanaDesaAdminState createState() => _DanaDesaAdminState();
}

class _DanaDesaAdminState extends State<DanaDesaAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dana Desa"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                   colors: <Color>[Colors.red[400], Colors.purple[300]])),
        ),
      ),
    );
  }
}