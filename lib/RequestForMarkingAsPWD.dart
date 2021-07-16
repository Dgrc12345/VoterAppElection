import 'package:flutter/material.dart';



class RequestForMakingAsPWD extends StatefulWidget {



  @override
  _State createState() => _State();
}

class _State extends State<RequestForMakingAsPWD> {
  bool _checkbox = false;
  bool _checkboxListTile = false;
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

                      contentPadding: const EdgeInsets.only(
                          left: 10.0, bottom: 8.0, top: 8.0),
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
                  margin: const EdgeInsets.only(top: 35.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 10.0, bottom: 8.0, top: 8.0),
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
                      SizedBox(width: 5.0),
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,

                        child: TextField(
                          decoration: InputDecoration(

                            fillColor: Color.fromARGB(255,255,255,255), filled: true,


                            //contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(

                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),


                            hintText: 'Chandani',

                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 10.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: 'Father Name',
                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),

                        ),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255,255,255,255), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: 'Vishram Thakur',
                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 10.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: 'State',
                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),

                        ),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255,255,255,255), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: 'NCT of Delhi',
                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 10.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: 'District',
                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),

                        ),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255,255,255,255), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: 'West',
                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 10.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: 'AC',
                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),

                        ),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255,255,255,255), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: 'Vikash Puri',
                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 10.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: 'Part No.',
                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),

                        ),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255,255,255,255), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: '340',
                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(

                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 238, 241, 241), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 10.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: 'Polling Station',

                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),

                        ),

                      ),

                      SizedBox(width: 5.0),
                      Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255,255,255,255), filled: true,

                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(2.5)),
                            ),

                            hintText: 'VIDYA MEM PUBLIC SCHOOL',
                            isDense: true,                      // Added this
                            //contentPadding: EdgeInsets.all(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,bottom: 5.0,left: 5.0,right: 5.0),

                  child: Text('Type of PWD ',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),
                Container(
                  padding: EdgeInsets.only(left: 8.0),
                  margin: EdgeInsets.only(top:5.0,left: 5.0,right: 5.0),
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
                  padding: const EdgeInsets.only(top: 15.0,bottom: 10.0,left: 5.0,right: 5.0),

                  child: Text('Mark Yourself if as PWD ',textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15.0,color: Colors.black),),),

          // Row(
          //   children: [
          //     //Text('Mark Yourself if as PWD'),
          //     Text('Bihar', style: TextStyle(fontSize: 15.0),),
          //
          //     Checkbox(
          //       value: _checkbox,
          //       onChanged: (value) {
          //         setState(() {
          //           _checkbox = !_checkbox;
          //         });
          //       },
          //     ),
          //
          //   ],)

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