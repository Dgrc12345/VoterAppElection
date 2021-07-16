import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/AppDrawer.dart';
import 'package:flutter_app/MyRepresentative.dart';
import 'package:flutter_app/Preview.dart';

import 'MyEpic.dart';
import 'MyPollingStation.dart';


class HomeScreen extends StatelessWidget {
  String title;
  HomeScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: new AppBar(
        title: Text(title),
      ),

      body: new DefaultTabController(
        length: 3,
        child: new Scaffold(

          appBar: new AppBar(

            flexibleSpace:FlexibleSpaceBar(),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            actions: <Widget>[

            ],
            title: new TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.deepOrange,

              tabs: [
                new Tab(
                  child: Text("My Epic",style: TextStyle(fontSize: 12.0,color: Colors.blueGrey,fontWeight:FontWeight.w800),),
                ),
                new Tab(
                  child: Text("My Polling Station",style: TextStyle(fontSize: 12.0,color: Colors.blueGrey,fontWeight:FontWeight.w800),),
                ),
                new Tab(
                    child: Text("My Representative",style: TextStyle(fontSize: 12.0,color: Colors.blueGrey,fontWeight:FontWeight.w800),)),
              ],
              indicatorColor: Colors.white,
            ),
          ),
          body: new TabBarView(
            children: [
              new ListViewBuilder(),
              new MyPollingStation(),
              new MyRepresentative(),


              //new Icon(Icons.directions_bike,size: 50.0,),
            ],
          ),
        ),
      ),
    );
  }
}