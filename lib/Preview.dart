

import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp( home: Preview(),));
}

class Preview extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      body: SingleChildScrollView(
        child: Padding(

          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(1),

                child: Text('Photograph',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(6),

                child: Image.asset("images/constittuency.png",alignment: Alignment.centerLeft,
                    width: 100.0,
                    height: 100.0,

                   ),
              ),

              Padding(
                padding: EdgeInsets.all(6),

                child: Text('Name',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(1),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6),

                child: Text('Date of Birth',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(1),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'dd/mm/yyyy',
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(6),

                child: Text('Age',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Enter your age',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6),

                child: Text('Name Of Relative',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Name of Relative',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6),

                child: Text('Type of Relation',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(1),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Type of Relation',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6),

                child: Text('Gender',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(1),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Gender',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6),

                child: Text('Address',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(1),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    isDense: true,
                    // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Address',
                  ),
                ),
              ),

              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[

                    SizedBox(

                        width: 150,
                        height:40,
                        child: RaisedButton(

                          textColor: Colors.teal,

                          color: Colors.yellow,
                          padding: EdgeInsets.all(12),

                          child:Text("NO",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,decorationStyle:TextDecorationStyle.solid),),
                          onPressed: () {

                          },)
                    ),

                    SizedBox(

                        width: 150,
                        height:40,
                        child: RaisedButton(

                          textColor: Colors.teal,
                          padding: EdgeInsets.all(12),
                          color: Colors.yellow,
                          child:Text("YES",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,decorationStyle:TextDecorationStyle.solid),),
                          onPressed: () {

                          },)
                    ),
                  ]


              ),

            ],),),
      ),);



  }
}