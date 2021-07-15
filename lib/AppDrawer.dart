import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomeScreen.dart';
import 'package:flutter_app/cVIGILScreen.dart';

import 'MyEpic.dart';
import 'MyPollingStation.dart';
import 'MyRepresentative.dart';


class AppDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<AppDrawer>{

  String mainProfilePic = "https://scontent.fdel29-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=1-3&_nc_sid=12b3be&_nc_ohc=ag9wB4NpcCYAX9Bek_m&_nc_ht=scontent.fdel29-1.fna&oh=f807f1eafe32432927edf082a4517eee&oe=60F304F8";
  String otherProfilePic = "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/368-mj-2516-02.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=9f3d0ad657bbca1c0f2db36ad7deb323";

  //.. Switching Profile using multiple Accounts

  /*void switchUser(){
    String backupString = mainProfilePic;
    this.setState(() {
      mainProfilePic = otherProfilePic;
      otherProfilePic = backupString;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    //return Scaffold(
       // appBar: AppBar(title: Text("Voter App"),),
        //drawer: new Drawer(
        return Drawer(
            child:  ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("Kumar Shubham"),
                  accountEmail: Text("9905858074"),
                  currentAccountPicture: GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(mainProfilePic),
                      ),
                      onTap: () => print("Current User")
                  ),

                  //.. This line of code provides the usage of multiple accounts
                  /* otherAccountsPictures: <Widget>[
              GestureDetector(
                onTap: ()=> switchUser(),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(otherProfilePic)
                ),
              ),
            ], */

                  decoration: BoxDecoration(
                    image: DecorationImage(
                        //fit: BoxFit.fill,
                        //image: NetworkImage("https://png.pngtree.com/thumb_back/fh260/background/20190828/pngtree-dark-vector-abstract-background-image_302715.jpg")

                          image: AssetImage("images/bg.png"), fit: BoxFit.cover)
                    ),
                  ),
                Container(height: 30, child: ListTile(
                    title: Text("My EPIC"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense:true,
                    onTap: () {
                      //Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => ListViewBuilder(),
                      ));
                    }
                )),

                Divider(thickness: 0.5,),
                Container(height: 30, child: ListTile(
                    title: Text("My Polling Station"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense:true,
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>MyPollingStation(),

                      ));
                    }
                )),
                Divider(thickness: 0.5,),
                Container(height: 30, child: ListTile(
                    title: Text("My Representative"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense:true,
                    onTap: () {
                      //Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => MyRepresentative(),
                      ));
                    }
                )),
                Divider(thickness: 0.5,),
                Container(height: 30, child: ListTile(
                    title: Text("cVIGIL"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense:true,
                    onTap: () {
                      //Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => cVIGILScreen("cVigil"),
                      ));
                    }
                )),
                Divider(thickness: 0.5,),
                Container(height: 30, child: ListTile(
                    title: Text("Election Date"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense:true,
                    onTap: () {
                      //Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => MyRepresentative(),
                      ));
                    }
                )),
                Divider(thickness: 0.5,),
                Container(height: 30, child: ListTile(
                    title: Text("Voter Turnout"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense:true,
                    onTap: () {
                     // Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => MyRepresentative(),
                      ));
                    }
                )),
                Divider(thickness: 0.5,),
                Container(height: 30, child: ListTile(
                    title: Text("Trends"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense:true,
                    onTap: () {
                     // Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => MyRepresentative(),
                      ));
                    }
                )),
                Divider(thickness: 0.5,),
                Container(height: 30, child: ListTile(
                    title: Text("Results"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense:true,
                    onTap: () {
                      //Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => MyRepresentative(),
                      ));
                    }
                )),
                Divider(thickness: 0.5,),
                Container(height: 30, child: ListTile(
                    title: Text("Service for Divyang"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense:true,
                    onTap: () {
                      //Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => MyRepresentative(),
                      ));
                    }
                )),
                Divider(thickness: 0.5,),
                Container(alignment:Alignment.center,height: 30, child: ListTile(
                    title: Text("Voter Education Resources"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    dense:true,
                    onTap: () {
                      //Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => MyRepresentative(),
                      ));
                    }
                )),
                Divider(thickness: 0.5,),

                Container(margin: EdgeInsets.all(10),alignment: Alignment.bottomCenter,height: 30, child: ListTile(
                    //trailing: Icon(Icons.arrow_forward_ios),
                    title: Text("Sign out"),
                    leading: Icon(Icons.logout),

                    dense:true,
                    onTap: () {
                      //Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => MyRepresentative(),
                      ));
                    }
                )),
                // ListTile(
                //   title: Text("Close"),
                //   trailing: Icon(Icons.arrow_forward_ios),
                //   onTap: () => Navigator.of(context).pop(),
                // ),
              ],
            )
        );
    //);
  }

}