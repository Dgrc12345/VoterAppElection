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
        padding: EdgeInsets.all(12.0),
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.contacts,
              text: 'My Epic',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.MyEpic)),
          _createDrawerItem(
              icon: Icons.event,
              text: 'My polling Station',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.MyPollingStation)),
          _createDrawerItem(
              icon: Icons.note,
              text: 'My Representative',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.myRepersentative)),
          Divider(),
          _createDrawerItem(
              icon: Icons.collections_bookmark,
              text: 'Steps',
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
            image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('images/eleclogo.png'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Flutter Step-by-Step",
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
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}