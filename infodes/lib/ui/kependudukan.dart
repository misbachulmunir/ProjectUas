import 'package:flutter/material.dart';

class Kependudukan extends StatefulWidget {
  @override
  _KependudukanState createState() => _KependudukanState();
}

class _KependudukanState extends State<Kependudukan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kependudukan"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.yellow[400], Colors.red[300]])),
        ),
      ),
    );
  }
}
