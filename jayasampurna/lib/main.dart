import 'package:flutter/material.dart';
import 'package:jayasampurna/ui/home_user.dart';
import 'ui/admin/home_admin.dart';
import 'ui/login.dart';

void main() => runApp(MyApp());
String username='';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JAYASAMPURNA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Login(),
      routes: <String,WidgetBuilder>{
        '/home_member': (BuildContext context)=> new Home(username: username,),
        '/home_admin': (BuildContext context)=> new HomeAdmin(username: username,),
        '/login': (BuildContext context)=> new Login(),
      },
    );
  }
}
