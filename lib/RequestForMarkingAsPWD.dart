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
          title: Text('Request for Marking as PWD',style: TextStyle(fontSize: 14.0,color: Colors.white)),

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

                  child: Text('EPIC Number ',textAlign: TextAlign.left,

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

                      hintText: 'Enter EPIC Number',
                      isDense: true,                      // Added this
                      //contentPadding: EdgeInsets.all(2),
                    ),
                  ),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
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
                      SizedBox(width: 10.0),
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
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
                    ],
                  ),
                ),


                Container(
                  margin: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text('SUBMIT', style: TextStyle(fontSize: 15.0),),
                    color: Colors.yellow,
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                ),




              ],
            ),
          ),
        )
    );
  }
}