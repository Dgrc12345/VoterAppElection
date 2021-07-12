import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomeScreen.dart';
import 'package:flutter_app/LoginScreen.dart';
import 'package:flutter_app/Routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.contacts,
              text: 'My Epic',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.MyEpic)),
          Divider(),
          _createDrawerItem(
              icon: Icons.event,
              text: 'My polling Station',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.MyPollingStation)),
          Divider(),
          _createDrawerItem(
              icon: Icons.note,
              text: 'My Representative',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.myRepersentative)),
          Divider(),
          _createDrawerItem(
              icon: Icons.collections_bookmark,
              text: 'cVIGIL',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.cVIGIL)),
          Divider(),
          _createDrawerItem(
              icon: Icons.collections_bookmark,
              text: 'Election Date',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.myRepersentative)),
          Divider(),
          _createDrawerItem(
              icon: Icons.collections_bookmark,
              text: 'Voter Turnout',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.myRepersentative)),
          Divider(),
          _createDrawerItem(
              icon: Icons.collections_bookmark,
              text: 'Trends',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.myRepersentative)),
          Divider(),
          _createDrawerItem(
              icon: Icons.collections_bookmark,
              text: 'Results',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.myRepersentative)),
          Divider(),
          _createDrawerItem(
              icon: Icons.collections_bookmark,
              text: 'Services for Divyang',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.myRepersentative)),
          Divider(),
          _createDrawerItem(
              icon: Icons.collections_bookmark,
              text: 'Voter Education Resources',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.myRepersentative)),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 20, 134, 147),
            image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('images/icon_username.png',))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Name",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child:Text(text,textAlign: TextAlign.left, style: TextStyle(fontSize: 15.0,color: Colors.teal),),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}