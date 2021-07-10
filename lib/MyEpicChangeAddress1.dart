import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/LoginScreen.dart';
import 'package:flutter_app/AppDrawer.dart';
import 'package:flutter_app/LoginScreen.dart';

import 'MyEpicFamilyChangeAddress.dart';
import 'SelfChangeAdress.dart';

class MyEpicChangeAddress1 extends StatelessWidget {
  late final String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*drawer: AppDrawer(),
      appBar: new AppBar(
        title: Text(title),
      ),*/

      body: new DefaultTabController(
        length: 2,
        child: new Scaffold(

          appBar: new AppBar(
            actions: <Widget>[],
            title: new TabBar(
              tabs: [
                new Tab(
                  child: Text("Self"),
                ),
                new Tab(
                  child: Text("Family"),
                ),

              ],
              indicatorColor: Colors.white,
            ),
          ),
          body: new TabBarView(
            children: [

              new SelfChangeAdress(),
              new MyEpicFamilyChangeAddress(),
            ],
          ),
        ),
      ),
    );
  }
}