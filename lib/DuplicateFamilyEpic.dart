import 'package:flutter/material.dart';



class DuplicateFamilyEpic extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DuplicateFamilyEpic> {
  String stateValue = "Bihar";
  List <String> spinnerState = [
    'Bihar',
    'Delhi',
    'Mumbai',
    'UP',
    'Odhisa'
  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(

          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 10.0,bottom: 10.0,left: 8,right: 8),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,bottom: 5.0,left: 10.0,right: 10.0),

                  child: Text('EPIC Number ',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),

                  child: TextField(

                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueGrey, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(2.5)),
                      ),

                      hintText: 'Please Enter EPIC Number',
                      isDense: true,                      // Added this
                      //contentPadding: EdgeInsets.all(2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 5.0,left: 10.0,right: 10.0),

                  child: Text('Specify reason ',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Container(
                  padding: EdgeInsets.only(left: 8.0),
                  margin: EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),
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
                      elevation: 15,
                      style: TextStyle(color: Colors.black, fontSize: 14),
                      onChanged: (newValue) {
                        setState(() {
                          stateValue = newValue;
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

                Padding(
                  padding: const EdgeInsets.only(top: 20.0,bottom: 5.0,left: 10.0,right: 10.0),

                  child: Text('Captcha ',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),

                Container(
                  margin: EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),
                  child: FlatButton(
                    child: Text('TtY6709', style: TextStyle(fontSize: 15.0),),
                    color:Color.fromARGB(75, 20, 134, 147),
                    textColor: Colors.black,
                    height: 60.0,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,bottom: 5.0,left: 10.0,right: 10.0),

                  child: Text('Enter Captcha ',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Padding(
                  padding: EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),

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
                  margin: EdgeInsets.only(top:100.0,left: 10.0,right: 10.0),
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