import 'package:flutter/material.dart';

class InformasiDesa extends StatefulWidget {
  @override
  _InformasiDesaState createState() => _InformasiDesaState();
}

class _InformasiDesaState extends State<InformasiDesa> {
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
