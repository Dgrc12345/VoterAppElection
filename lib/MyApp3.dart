import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'MyEpicChangeAddress1.dart';

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Drawer Layout',
      theme: new ThemeData(
        primaryColor: Color.fromARGB(255, 20, 134, 147),
      ),
      home: MyEpicChangeAddress1(title: "Drawer Layout  Tabs",),
    );
  }
}
