import 'package:flutter/material.dart';
import 'package:flutter_purple_admin/application.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Purple',
      // theme: ThemeData(
      //   primaryColor: Color.fromRGBO(202, 140, 208, 0),
      // ),
      home: Application(
        contentTitle: 'Buttons',
        content: Container(),
      ),
    );
  }
}
