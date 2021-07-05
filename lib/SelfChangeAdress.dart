import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/SignUpScreen.dart';

import 'HomeScreen.dart';
import 'SplashScreen.dart';
import 'main1.dart';

void main() {
  runApp(SelfChangeAdress());
}

class SelfChangeAdress extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

       List <String> spinnerItems = [
       'One',
      'Two',
      'Three',
      'Four',
      'Five'
      ] ;

      @override
        void initState() {
        super.initState();
        // startSplashScreen();
     }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 226, 226),
      appBar: AppBar(
        title: Text('Change Address'),
      ),
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
                Text('State', style: TextStyle(fontSize: 12.0,color: Colors.white,),),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white54,

                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child : Column(children: <Widget>[

                    DropdownButton<String>(
                      value: dropdownValue,  isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.red, fontSize: 18),

                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),

                  ]),),
                Text('District', style: TextStyle(fontSize: 12.0,color: Colors.white,),),
                Container(

                  decoration: BoxDecoration(
                     color: Colors.white54,

                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child : Column(children: <Widget>[

                    DropdownButton<String>(
                      value: dropdownValue,  isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,

                      style: TextStyle(color: Colors.red, fontSize: 18),

                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),

                  ]),),
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
