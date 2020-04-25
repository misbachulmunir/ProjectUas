import 'package:flutter/material.dart';
class StaffDesaAdmin extends StatefulWidget {
  @override
  _StaffDesaAdminState createState() => _StaffDesaAdminState();
}

class _StaffDesaAdminState extends State<StaffDesaAdmin> {
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