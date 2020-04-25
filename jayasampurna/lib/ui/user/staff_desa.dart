import 'package:flutter/material.dart';
class StaffDesa extends StatefulWidget {
  @override
  _StaffDesaState createState() => _StaffDesaState();
}

class _StaffDesaState extends State<StaffDesa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staff Desa"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                 colors: <Color>[Colors.purple[400], Colors.blue[300]]))
        ),
      ),
    );
  }
}