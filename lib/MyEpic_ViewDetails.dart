import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('View Details'),
        ),

        body: Padding(

            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(1),

                  child: Text('Name',textAlign: TextAlign.left,

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
        )
    );
  }
}