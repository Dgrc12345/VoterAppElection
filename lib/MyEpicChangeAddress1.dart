import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/AppDrawer.dart';
import 'package:flutter_app/LoginScreen.dart';

class MyEpicChangeAddress1 extends StatelessWidget {
  final String title;
  static const String routeName = '/tab';
  MyEpicChangeAddress1({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: new AppBar(
        title: Text(title),
      ),

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
              new Text("Home Page",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:Color.fromARGB(255, 20, 134, 147),
                    fontSize: 22,
                  )),
              new LoginScreen(),
              //new Icon(Icons.directions_transit,size: 50.0,),

            ],
          ),
        ),
      ),
    );
  }
}