import 'package:flutter/material.dart';
import 'package:hello/fb.dart';
import 'package:hello/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: Fb(),
      // home: MyHomePage(title: "testing one two three"),
    );
  }
}

class Testing extends StatelessWidget {
  int conter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text('$conter'),
        ),
        GestureDetector(
          onTap: () {
            conter++;
            print("c =" + conter.toString());
          },
          child: Container(
            width: 50,
            height: 50,
            color: Colors.greenAccent,
          ),
        ),
      ],
    );
  }
}
