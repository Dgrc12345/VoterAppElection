

import 'package:flutter/material.dart';


class Preview extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(title: Text("View Detail"),),

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
              Container(
                width: 120.0,
                height: 120.0,
                child: Padding(
                  padding: EdgeInsets.all(6),

                  child: Image.asset("images/profile1.png",alignment: Alignment.topLeft,
                    width: 120.0,
                    height: 120.0,

                     ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Name',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
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
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Date of Birth',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(

                      borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    ),

                    hintText: 'dd/mm/yyyy',
                    isDense: true,                      // Added this
                    //contentPadding: EdgeInsets.all(2),
                  ),

                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Age',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    ),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Enter your age',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Name Of Relative',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    ),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Name of Relative',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Type of Relation',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    ),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Type of Relation',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Gender',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    ),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Gender',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0,bottom: 4.0),

                child: Text('Address',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    ),

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
  @override
  void dispose() {
    print("Disposing second route");
    super.dispose();
  }
}