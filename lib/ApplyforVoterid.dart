

import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp( home: ApplyForVoterID(),));
}


class ApplyForVoterID extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ApplyForVoterID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
            color: Colors.white
        ),
        title: Text('Apply for Voter ID',style: TextStyle(fontSize: 14.0,color: Colors.white)),

        backgroundColor: Color.fromARGB(255, 20, 134, 147),
      ),
      backgroundColor: Colors.white,
      //appBar: new AppBar(title: Text("Apply for Voter ID"),),

      body: SingleChildScrollView(
        child: Padding(

          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                //padding: EdgeInsets.all(1),
                padding: const EdgeInsets.only(top: 5.0,left: 10,right: 10),

                child: Text('Photograph',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.black),),),
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
                //padding: EdgeInsets.only(left: 6.0,bottom: 4.0),
                padding: const EdgeInsets.only(top: 5.0,left: 10,right: 10),

                child: Text('Name',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.black),),),
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

                    hintText: 'Enter Name',
                    isDense: true,                      // Added this
                    //contentPadding: EdgeInsets.all(2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 10,right: 10),

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
                padding: const EdgeInsets.only(top: 5.0,left: 10,right: 10),

                child: Text('Age',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
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
                    hintText: 'Enter your age',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 10,right: 10),

                child: Text('Name Of Relative',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
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
                    hintText: 'Name of Relative',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 10,right: 10),

                child: Text('Type of Relation',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
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
                    hintText: 'Type of Relation',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 10,right: 10),

                child: Text('Gender',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
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
                    hintText: 'Gender',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 10,right: 10),

                child: Text('Address',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
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
              Padding(
                //padding: EdgeInsets.all(1),
                padding: const EdgeInsets.only(top: 5.0,left: 10,right: 10),

                child: Text('Upload proof of address',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Container(
                width: 400.0,
                height: 150.0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 10,right: 10),
                  //padding: EdgeInsets.all(6),

                  child: Image.asset("images/profile1.png",alignment: Alignment.topLeft,
                    width: 120.0,
                    height: 120.0,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 10,right: 10),

                child: Text('Captcha ',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),

              Container(
                margin: EdgeInsets.all(8),
                child: FlatButton(
                  child: Text('TtY6709', style: TextStyle(fontSize: 15.0),),
                  color:Color.fromARGB(75, 20, 134, 147),
                  textColor: Colors.black,
                  height: 60.0,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 10,right: 10),

                child: Text('Enter Captcha ',textAlign: TextAlign.left,

                  style: TextStyle(fontSize: 15.0,color: Colors.teal),),),
              Padding(
                padding: EdgeInsets.all(8),

                child: TextField(

                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blueGrey, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    ),

                    hintText: 'Please Enter Captcha',
                    isDense: true,                      // Added this
                    //contentPadding: EdgeInsets.all(2),
                  ),
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

            ],),),
      ),);



  }
  @override
  void dispose() {
    print("Disposing second route");
    super.dispose();
  }
}