import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'MyApp3.dart';

void main()=> runApp(main1());
class main1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 20, 134, 147),
      ),
      home: MyApp3(),
    );
  }
}