import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:infodes/services/sigin.dart';
import 'package:infodes/ui/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                          "LOGIN SISTEM INFORMASI DESA JAYASAMPURNA",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), hintText: 'NIK'),
                          keyboardType: TextInputType.number,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                        ),
                        TextField(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RaisedButton(
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                // Navigator.pushReplacement(
                                //   context,
                                // MaterialPageRoute(
                                //   builder: (context) => Menu()));
                              },
                              color: Colors.purple[300],
                            ),
                            RaisedButton(
                              child: Text(
                                "Login Dengan Google",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                signInWithGoogle().whenComplete(() {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Home();
                                      },
                                    ),
                                  );
                                });
                              },
                              color: Colors.blue,
                            ),
                          ],
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
