import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/SignUpScreen.dart';
import 'package:flutter/services.dart';

import 'HomeScreen.dart';
import 'MyEpicFamilyChangeAddress3.dart';
import 'MyEpicSelfChangeAddressNext.dart';
import 'SplashScreen.dart';
import 'main1.dart';

class MyEpicFamilyChangeAddressNext extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
        title: "ListView.builder",
        theme: new ThemeData(
            primarySwatch: Colors.green
        ),
        debugShowCheckedModeBanner: false,
        home: new MyHomePage( title: '',));


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

            child: Container(


              child: Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 172, 212, 224),
                    ),
                    padding: EdgeInsets.only(bottom: 15.0),

                    child: Column(
                      children: [

                        Container(
                          margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 20.0),

                          child: Row(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(

                                    padding: const EdgeInsets.only(left:5.0),

                                    child: Flexible(

                                      child: Text(
                                          'Name',
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                          style: TextStyle(fontSize: 15.0,color: Colors.grey,fontWeight: FontWeight.w200)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(

                                    padding: const EdgeInsets.only(left:15.0),

                                    child: Flexible(

                                      child: Text(
                                          'Epic Number',
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                          style: TextStyle(fontSize: 15.0,color: Colors.grey,fontWeight: FontWeight.w200)),
                                    ),
                                  ),
                                ),


                              ]
                          ),


                        ), Container(

                          margin: EdgeInsets.only(left: 10.0,right: 10.0),
                          child: Row(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(

                                    padding: const EdgeInsets.only(left:5.0),

                                    child: Flexible(

                                      child: Text(
                                          'Chandni',
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                          style: TextStyle(fontSize: 15.0,color: Colors.blueGrey,fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(

                                    padding: const EdgeInsets.only(left:15.0),

                                    child: Flexible(

                                      child: Text(
                                          'NEL366485864',
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                          style: TextStyle(fontSize: 15.0,color: Colors.blueGrey,fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),


                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Image.asset("images/info.png"),
                        Text(
                            'Current address details',
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: TextStyle(fontSize: 15.0,color: Colors.teal,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 16.0,right:16.0,bottom: 7.0,top: 7),
                    child: Text('State', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 20, 134, 147),),),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 16.0,right: 16.0),
                    height: 40,
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
                        style: TextStyle(color: Colors.black, fontSize: 14),
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
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 16.0,right:16.0,bottom: 7.0,top: 7),
                    child: Text('District', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 20, 134, 147),),),
                  ),

                  Container(
                    height: 40,

                    margin: EdgeInsets.only(left: 16.0,right: 16.0),

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

                        value: dropdownValue,  isExpanded: true,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.black, fontSize: 14),
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
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.only(left: 16.0,right:16.0,bottom: 7.0,top: 7),

                    child: Text('House Number',textAlign: TextAlign.left,

                      style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
                  Padding(
                    padding: EdgeInsets.only(left: 16,right: 16.0),
                    child: TextField(

                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.blueGrey, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(2.5)),
                        ),

                        hintText: 'Name',
                        isDense: true,                      // Added this
                        //contentPadding: EdgeInsets.all(2),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0,right:16.0,bottom: 7.0,top: 7),

                    child: Text('Street/Area/Zone/Mohalla/Road',textAlign: TextAlign.left,

                      style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
                  Padding(
                    padding: EdgeInsets.only(left: 16,right: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(

                          borderSide:
                          BorderSide(color: Colors.blueGrey, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(2.5)),
                        ),

                        hintText: 'Street/Area/Zone/Mohalla/Road',
                        isDense: true,                      // Added this
                        //contentPadding: EdgeInsets.all(2),
                      ),

                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 16.0,right:16.0,bottom: 7.0,top: 7),

                    child: Text('Town/Village',textAlign: TextAlign.left,

                      style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
                  Padding(
                    padding: EdgeInsets.only(left: 16,right: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,
                        border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.blueGrey, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(2.5)),
                        ),
                        isDense: true,                      // Added this
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Town/Village',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0,right:16.0,bottom: 7.0,top: 7),

                    child: Text('Post Code',textAlign: TextAlign.left,

                      style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
                  Padding(
                    padding: EdgeInsets.only(left: 16,right: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,
                        border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.blueGrey, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(2.5)),
                        ),
                        isDense: true,                      // Added this
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Post Code',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0,right:16.0,bottom: 7.0,top: 7),

                    child: Text('Pin Code',textAlign: TextAlign.left,

                      style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
                  Padding(
                    padding: EdgeInsets.only(left: 16,right: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,
                        border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.blueGrey, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(2.5)),
                        ),
                        isDense: true,                      // Added this
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Post Code',
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:15.0,left: 15.0,right: 15.0),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[

                          SizedBox(

                              width:250,
                              height:50,
                              child: RaisedButton(

                                textColor: Colors.teal,

                                color: Colors.yellow,
                                padding: EdgeInsets.all(12),

                                child:Text("Next",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13.0,decorationStyle:TextDecorationStyle.solid),),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyEpicFamilyChangeAddress3()));
                                },)
                          ),]),
                  ),

                ],

              ),
            ),

          ),
        ),
      ),
    );
  }
}
