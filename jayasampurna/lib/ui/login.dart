import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();
//model login ===========================================================================================
  String msg = '';

  Future<List> _login() async {
    final response =
        await http.post("https://munir.galih.pw/infodes/login.php", body: {
      "username": user.text,
      "password": pass.text,
    });

    var datauser = json.decode(response.body);

    if (datauser.length == 0) {
      setState(() {
        msg = "Login Fail";
      });
    } else {
      if (datauser[0]['level'] == 'admin') {
        Navigator.pushReplacementNamed(context, '/home_admin');
      } else if (datauser[0]['level'] == 'member') {
        Navigator.pushReplacementNamed(context, '/home_member');
      }

      setState(() {
        username = datauser[0]['username'];
      });
    }

    return datauser;
  }
  ///////////////////////////////////////////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //  title: Text("Login Ecampus"),
      //  backgroundColor: Colors.blue[400],
      // ),
      body: Stack(
        children: <Widget>[
          Container(
              //margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  //  borderRadius: BorderRadiusDirectional.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: <Color>[
                Colors.lightGreen[400],
                Colors.blue[300]
              ]))),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white24, borderRadius: BorderRadius.circular(15)),
            child: ListView(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Image.asset(
                            "images/logo.png",
                            width: 200,
                          ),
                        ),
                        Text(
                          "LOGIN DESA JAYASAMPURNA",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                        ),
                        TextField(
                          controller: user,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), hintText: 'Username'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                        ),
                        TextField(
                          controller: pass,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Password',

                            // errorMaxLines: 8,
                          ),
                          obscureText: true,
                          maxLength: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                        ),
                        RaisedButton(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            _login();
                            // Navigator.pushReplacement(
                            //   context,
                            // MaterialPageRoute(
                            //   builder: (context) => Menu()));
                          },
                          color: Colors.purple[300],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Belum punya akun? ",
                              style: TextStyle(fontSize: 12),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                // MaterialPageRoute(
                                //   builder: (context) => Daftar()));
                              },
                              child: Text(
                                "Daftar",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.blue),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
