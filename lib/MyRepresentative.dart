import 'package:flutter/material.dart';

import 'MyRepresentativeListViewBuilder.dart';

void main() {
  runApp(MaterialApp( home: MyRepresentative(),));
}


class MyRepresentative extends StatelessWidget {
  final titles = ["Radhakrishnan P.", "Sashikala R", "List 3"];
  final subtitles = [
    "Party : Bhartiya Janta Party",
    "Party : Bhartiya Janta Party",
    "Party : Bhartiya Janta Party"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      /*  appBar: AppBar(
          title:Text("ListView.builder")
      ),*/
      body:MyRepresentativeListViewBuilder()
     /* body:SafeArea(
        top: false,
        bottom: false,

        child: Form(
          autovalidate: true,

          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,


            child: SingleChildScrollView(

              child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment :CrossAxisAlignment.center,
                  children: <Widget>[


                    new Container(


                      child: Card(

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),


                        elevation: 10,
                        child: Column(

                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                          children: <Widget>[
                            GestureDetector(

                              child: Container(
                                height: 40.0,

                                child: Row(
                                  children: <Widget>[

                                    Padding(
                                      padding: const EdgeInsets.only(top:10.0,left: 15.0,bottom: 5.0),
                                      child: SizedBox(
                                          width: 30,
                                          height: 30,
                                          child:Image.asset("images/flag.png")),),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.5,
                                      child: Padding(

                                        padding: const EdgeInsets.only(left:15.0),

                                        child: Flexible(

                                          child: Text(
                                              'Winning Candidates',
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: true,
                                              style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)),
                                        ),
                                      ),
                                    ),

                                  ],),
                              ),),
                            Divider(
                              height: 10,
                              thickness: 3,
                            ),
                            GestureDetector(

                              child: Container(
                                height: 40.0,
                                child: Row(

                                  children: <Widget>[

                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.5,
                                      child: Padding(

                                        padding: const EdgeInsets.only(left:25.0),

                                        child: Text(
                                            'Parliamentry Constituency',
                                            style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.bold)),
                                      ),
                                    ),

                                  ],),
                              ),
                            ),



                          ],),),),

                  ]),),),),

      )*/
      ,);
  }



}
