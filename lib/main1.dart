import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app/LoginScreen.dart';
import 'package:flutter_app/MyEpicChangeAddress1.dart';

import 'HomeScreen.dart';
import 'MyApp3.dart';
import 'Routes.dart';

void main()=> runApp(main1());
class main1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 20, 134, 147),
      ),
      home: HomeScreen("Home"),
      routes:  {
        Routes.home: (context) => HomeScreen("Home"),
        Routes.login: (context) => LoginScreen(),
        Routes.tab: (context) => MyEpicChangeAddress1(title: 'Tab Screen',),
      },
    );
  }
}