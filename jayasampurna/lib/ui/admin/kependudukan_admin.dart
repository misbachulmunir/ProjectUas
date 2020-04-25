import 'package:flutter/material.dart';

class KependudukanAdmin extends StatefulWidget {
  @override
  _KependudukanAdminState createState() => _KependudukanAdminState();
}

class _KependudukanAdminState extends State<KependudukanAdmin> {
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
