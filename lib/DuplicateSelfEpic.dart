import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/SignUpScreen.dart';
import 'package:flutter/services.dart';

import 'HomeScreen.dart';
import 'SplashScreen.dart';
import 'main1.dart';

void main() {
  runApp(MaterialApp( home: DuplicateSelfEpic(),));
}

class DuplicateSelfEpic extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String dropdownValue = 'One';
  String stateValue = "Bihar";

  List <String> spinnerItems = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five'
  ] ;

  List <String> spinnerState = [
    'Bihar',
    'Delhi',
    'Mumbai',
    'UP',
    'Odhisa'
  ] ;

  @override
  void initState() {
    super.initState();
    // startSplashScreen();
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 221, 226, 226),
      backgroundColor: Colors.white,
      body: SafeArea(

        top: false,
        bottom: false,
        child: Form(
          autovalidate: true,

          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 10.0, bottom: 4.0),
                  child: Text('State', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 20, 134, 147),),),
                ),

                Container(
                  padding: EdgeInsets.only(left: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,

                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(1),

                  ),
                  child : DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: stateValue,  isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      onChanged: (newValue) {
                        setState(() {
                          stateValue = newValue!;
                        });
                      },
                      items: spinnerState.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),

                Text('District', style: TextStyle(fontSize: 12.0,color: Colors.white,),),
                // Container(
                //
                //   decoration: BoxDecoration(
                //      color: Colors.white54,
                //
                //     border: Border.all(
                //       color: Colors.white,
                //       width: 2,
                //     ),
                //     borderRadius: BorderRadius.circular(12),
                //
                //   ),
                //   child : Column(children: <Widget>[
                //
                //     DropdownButton<String>(
                //       value: stateValue,  isExpanded: true,
                //       icon: Icon(Icons.arrow_drop_down),
                //       iconSize: 24,
                //       elevation: 16,
                //
                //       style: TextStyle(color: Colors.red, fontSize: 18),
                //
                //       onChanged: (newValue) {
                //         setState(() {
                //           stateValue = newValue!;
                //         });
                //       },
                //       items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
                //         return DropdownMenuItem<String>(
                //           value: value,
                //           child: Text(value),
                //         );
                //       }).toList(),
                //     ),
                //
                //   ]),),
                Padding(
                  padding: EdgeInsets.all(1),

                  child: Text('House Number',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(1),

                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),

                      hintText: 'Enter Your Name',
                      isDense: true,                      // Added this
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),

                  child: Text('Date of Birth',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(1),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,                      // Added this
                      contentPadding: EdgeInsets.all(8),
                      hintText: 'Enter Date of Birth',
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(1),

                  child: Text('Age',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,                      // Added this
                      contentPadding: EdgeInsets.all(8),
                      hintText: 'Enter your age',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),

                  child: Text('Name of Relative',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,                      // Added this
                      contentPadding: EdgeInsets.all(8),
                      hintText: 'Enter name of relative',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),

                  child: Text('Name of Relative',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,                      // Added this
                      contentPadding: EdgeInsets.all(8),
                      hintText: 'Type of Relation',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),

                  child: Text('Name of Relative',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,                      // Added this
                      contentPadding: EdgeInsets.all(8),
                      hintText: 'Gender',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),

                  child: Text('Name of Relative',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,                      // Added this
                      contentPadding: EdgeInsets.all(8),
                      hintText: 'Enter your address',
                    ),
                  ),
                ),

                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.yellow,
                  child: Text('UPDATE'),
                  onPressed: (){},
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 120.0,bottom: 10.0),
                  child:new Row(


                      children: <Widget>[
                        new Padding(padding: new EdgeInsets.only(left: 20.0 ,right: 20.0),),
                        Text('Instructions', style: TextStyle(fontSize: 12.0,color: Colors.white,),),
                        Spacer(), // <-- Use this
                        Text('FAQs' ,style: TextStyle(fontSize: 12.0,color: Colors.white,),),
                        Spacer(),

                        Text('Press Release', style: TextStyle(fontSize: 12.0,color: Colors.white,),),
                        Spacer(),
                      ],

                      mainAxisSize:MainAxisSize.max
                  ),
                ),
                new Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.only(top: 20.0),
                  child:new Image.asset("images/niclogo.png",
                      width: 140.0,
                      height: 40.0,

                      fit: BoxFit.cover),),
              ],

            ),

          ),
        ),
      ),
    );
  }
}
