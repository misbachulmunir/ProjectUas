import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'dana_desa.dart';
import 'informasi_desa.dart';
import 'kependudukan.dart';
import 'kritik_saran.dart';
import 'staff_desa.dart';

class Home extends StatefulWidget {
  Home({this.username});
  final String username;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var ukuran =14.0;
  var ukuranicon =40.0;
  Color warnaicon=Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("MENU UTAMA"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            FlipCard(
              front: Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "images/logo.png",
                  width: 180,
                  height: 180,
                ),
              ),
              back: Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "images/logo.png",
                  width: 180,
                  height: 180,
                ),
              ),
            ),
            
            Center(child: Text("APLIKASI DESA JAYASAMPURNA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
            Center(child: Text("KECAMATAN SERANG BARU KABUPATEN BEKASI",style: TextStyle(fontSize: 14),)),
            Padding(
              padding: EdgeInsets.all(8),
            ),
//row pertama ===================================================================================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // informasi desa =================================================================================
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return InformasiDesa();
                        },
                      ),
                    );
                  },
                  child: Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                          Colors.lightGreen[400],
                          Colors.blue[300]
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.info,color: warnaicon,
                            size: ukuranicon,
                          ),
                          Text(
                            "Informasi desa",
                            style: TextStyle(
                                fontSize: ukuran,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )),
                    ),
                  )),
                ), //staf desa ===============================================================================
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return StaffDesa();
                        },
                      ),
                    );
                  },
                  child: Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: <Color>[
                          Colors.purple[400],
                          Colors.blue[300]
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.person,color: warnaicon,
                            size: ukuranicon,
                          ),
                          Text(
                            "Staff Desa",
                            style: TextStyle(
                                fontSize: ukuran,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )),
                    ),
                  )),
                ),
              ],
            ),
//row kedua ===============================================================================================================

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //dana desa ===============================================================================================
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return DanaDesa();
                        },
                      ),
                    );
                  },
                  child: Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: <Color>[
                          Colors.red[400],
                          Colors.purple[300]
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.attach_money,color: warnaicon,
                            size: ukuranicon,
                          ),
                          Text(
                            "Dana Desa",
                            style: TextStyle(
                                fontSize: ukuran,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )),
                    ),
                  )),
                ), //kependudukan ============================================================================
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Kependudukan();
                        },
                      ),
                    );
                  },
                  child: Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: <Color>[
                          Colors.yellow[400],
                          Colors.red[300]
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.card_membership,color: warnaicon,
                            size: ukuranicon,
                          ),
                          Text(
                            "Kependudukan",
                            style: TextStyle(
                                fontSize: ukuran,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )),
                    ),
                  )),
                ),
              ],
            ),
//row ketiga ============================================================================================================

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //Kritik dan saran ======================================================================================
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return KritikSaran();
                        },
                      ),
                    );
                  },
                  child: Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: <Color>[
                          Colors.orange[400],
                          Colors.yellow[300]
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.chat_bubble,color: warnaicon,
                            size: ukuranicon,
                          ),
                          Text(
                            "Kritik dan Saran",
                            style: TextStyle(
                                fontSize:ukuran,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )),
                    ),
                  )),
                ),
                // keluar =========================================================================================
                GestureDetector(
                  onTap: () {
                   Navigator.pushReplacementNamed(context,'/login');
                    
                  },
                  child: Card(
                      child: Container(
                        
                         width: MediaQuery.of(context).size.width/2.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: <Color>[
                          Colors.red[400],
                          Colors.yellow[300]
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.exit_to_app,color: warnaicon,
                            size: ukuranicon,
                          ),
                          Text(
                            "Keluar",
                            style: TextStyle(
                                fontSize: ukuran,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )),
                    ),
                  )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(child: Text("@Copyright 2020 By ?")),
            )
          ],
        ),
      ),
    );
  }
}
