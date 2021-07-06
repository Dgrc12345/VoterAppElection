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
          leading: BackButton(
              color: Colors.white
          ),
          title: Text('View Details',style: TextStyle(fontSize: 14.0,color: Colors.white)),

          backgroundColor: Color.fromARGB(255, 20, 134, 147),
        ),

        body: SafeArea(

        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 10.0,bottom: 10.0,left: 8,right: 8),
        child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),

                  child: Text('Photograph',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                new Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 12.0),
                  child:new Image.asset("images/userprofile.png",
                      width: 100.0,
                      height: 100.0,

                      fit: BoxFit.cover),),

                Padding(
                  padding: EdgeInsets.all(5),

                  child: Text('Name',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(5),

                  child: TextField(

                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueGrey, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(2.5)),
                      ),

                      hintText: 'Enter Your Name',
                      isDense: true,                      // Added this
                      //contentPadding: EdgeInsets.all(2),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),

                  child: Text('Date of Birth',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                      border: OutlineInputBorder(borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(2.5)),),
                      isDense: true,                      // Added this
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'Enter Date of Birth',
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(5),

                  child: Text('Age',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                      border: OutlineInputBorder(borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(2.5)),),
                      isDense: true,                      // Added this
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'Enter your age',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),

                  child: Text('Name of Relative',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                      border: OutlineInputBorder(borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(2.5)),),
                      isDense: true,                      // Added this
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'Enter name of relative',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),

                  child: Text('Type of Relation',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                      border: OutlineInputBorder(borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(2.5)),),
                      isDense: true,                      // Added this
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'Type of Relation',
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(5),

                  child: Text('Gender',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                      border: OutlineInputBorder(borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(2.5)),),
                      isDense: true,                      // Added this
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'Gender',
                    ),
                  ),
                ),



                Padding(
                  padding: EdgeInsets.all(5),

                  child: Text('Address',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.all(5),
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
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'Enter your address',
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(15),
                  child: FlatButton(
                    child: Text('UPDATE', style: TextStyle(fontSize: 20.0),),
                    color: Colors.yellow,
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                ),

                new Container(
                  margin: const EdgeInsets.only(top: 50.0,bottom: 10.0),
                  child:new Row(


                      children: <Widget>[
                        new Padding(padding: new EdgeInsets.only(left: 20.0 ,right: 20.0),),
                        Text('Instructions', style: TextStyle(fontSize: 12.0,color: Colors.grey,),),
                        Spacer(), // <-- Use this
                        Text('FAQs' ,style: TextStyle(fontSize: 12.0,color: Colors.grey,),),
                        Spacer(),

                        Text('Press Release', style: TextStyle(fontSize: 12.0,color: Colors.grey,),),
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
        )
    );
  }
}