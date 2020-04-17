import 'package:flutter/material.dart';

class Warna {
  Color informasidesacolor1 = Colors.lightGreen[400];
  Color informasidesacolor2 = Colors.blue[300];
  Warna({this.informasidesacolor1, this.informasidesacolor2});
  get warna {
    return informasidesacolor1;
  }

  set warna(Color baru) {
    baru = informasidesacolor1;
  }
}
