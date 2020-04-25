import 'package:flutter/material.dart';

class InformasiDesaAdmin extends StatefulWidget {
  @override
  _InformasiDesaAdminState createState() => _InformasiDesaAdminState();
}

class _InformasiDesaAdminState extends State<InformasiDesaAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informasi Desa"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.lightGreen[400], Colors.blue[300]])),
        ),
      ),
    );
  }
}
