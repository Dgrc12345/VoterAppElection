import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp( home: Register(),));
}

class Register extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('View Details'),
        ),

        body: Padding(

          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(1),

                child: Text('EPIC Number',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(6),

                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    hintText: 'EPIC Number',
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                  ),
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

                child: Text('State',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'sate',
                  ),
                ),
              ),

          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                SizedBox(
                width: 150,
                height:50,
                child: RaisedButton(

                  textColor: Colors.indigo,

                  color: Colors.yellow,
                  child:Text("NOT NOW",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,decorationStyle:TextDecorationStyle.solid),),
                  onPressed: () {

                  },)
            ),

            SizedBox(
                width: 150,
                height:50,
                child: RaisedButton(

                  textColor: Colors.indigo,

                  color: Colors.yellow,
                  child:Text("SUBMIT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,decorationStyle:TextDecorationStyle.solid),),
                  onPressed: () {

                  },)
            ),
          ]


          ),],),),);



  }
}