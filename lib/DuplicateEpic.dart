import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/AppDrawer.dart';

import 'DuplicateFamilyEpic.dart';

class DuplicateEpic extends StatelessWidget {
 String title;
  //DuplicateEpic(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        leading: BackButton(
            color: Colors.white
        ),
        title: Text('Duplicte EPIC',style: TextStyle(fontSize: 14.0,color: Colors.white)),

        backgroundColor: Color.fromARGB(255, 20, 134, 147),
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
              new DuplicateFamilyEpic(),
              new DuplicateFamilyEpic(),
            ],
          ),
        ),
      ),
    );
  }
}