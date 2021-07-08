import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/AppDrawer.dart';


void main() {
  runApp(MaterialApp( home: DuplicateEpic(),));
}


class DuplicateEpic extends StatelessWidget {
  late final String title;
  //DuplicateEpic(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
            color: Colors.white
        ),
        title: Text('Duplicte EPIC',style: TextStyle(fontSize: 14.0,color: Colors.white)),

        backgroundColor: Color.fromARGB(255, 20, 134, 147),
      ),
      // drawer: AppDrawer(),
      // appBar: new AppBar(
      //   title: Text(title),
      // ),

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
              new Text("Self",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 22,
                  )),
              new Icon(Icons.directions_transit,size: 50.0,),
            ],
          ),
        ),
      ),
    );
  }
}