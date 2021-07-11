import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/AppDrawer.dart';
import 'package:flutter_app/Preview.dart';

import 'MyEpic.dart';
import 'MyPollingStation.dart';


class cVIGIL_Main_Complainlist extends StatelessWidget {
  late final String title;
  cVIGIL_Main_Complainlist(this.title);

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
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 20, 134, 147),

            actions: <Widget>[],
            title: new TabBar(
              
              tabs: [
                
                Expanded(
                  child: new Tab(
                    child: Text("Complaints",style: TextStyle(fontSize: 13.0,color: Colors.white60,fontWeight:FontWeight.w800),),
                  ),
                ),
                Expanded(
                  child: new Tab(
                    child: Text("Anonymous Complaints",style: TextStyle(fontSize: 13.0,color: Colors.white60,fontWeight:FontWeight.w800),),
                  ),
                ),

              ],
              indicatorColor: Colors.white,
            ),
          ),
          body: new TabBarView(
            children: [
              new ListViewBuilder(),
              new MyPollingStation(),
            ],
          ),
        ),
      ),
    );
  }
}