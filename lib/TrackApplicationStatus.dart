import 'package:flutter/material.dart';



class TrackApplicationStatus extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<TrackApplicationStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
              color: Colors.white
          ),
          title: Text('Track the Application status',style: TextStyle(fontSize: 14.0,color: Colors.white)),

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

                  child: Text('Enter application reference number ',textAlign: TextAlign.left,

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

                      hintText: 'Enter application reference number',
                      isDense: true,                      // Added this
                      //contentPadding: EdgeInsets.all(2),
                    ),
                  ),
                ),


                Container(
                  margin: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text('TRACK STATUS', style: TextStyle(fontSize: 15.0),),
                    color: Colors.yellow,
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(5),
                  child: FlatButton(
                    child: Text('YOUR APPLICATION IS UNDER PROCESS', style: TextStyle(fontSize: 15.0),),
                    color:Color.fromARGB(109, 20, 134, 147),
                    textColor: Colors.black,
                    height: 200.0,
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