import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatelessWidget {
  late final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(title),
      ),

      body: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            actions: <Widget>[],
            title: new TabBar(
              tabs: [
                new Tab(
                  child: Text("HOME"),
                ),
                new Tab(
                  child: Text("CATEGORIE"),
                ),
                new Tab(
                    child: Text("PREMIUM")),
              ],
              indicatorColor: Colors.white,
            ),
          ),
          body: new TabBarView(
            children: [
              new Text("Home Page",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 22,
                  )),
              new Icon(Icons.directions_transit,size: 50.0,),
              new Icon(Icons.directions_bike,size: 50.0,),
            ],
          ),
        ),
      ),
    );
  }
}