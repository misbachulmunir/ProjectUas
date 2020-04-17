import 'package:flutter/material.dart';
class DanaDesa extends StatefulWidget {
  @override
  _DanaDesaState createState() => _DanaDesaState();
}

class _DanaDesaState extends State<DanaDesa> {
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