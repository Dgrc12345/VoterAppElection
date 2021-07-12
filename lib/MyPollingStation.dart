import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomeScreen.dart';
import 'package:flutter_app/MyEpicChangeAddress1.dart';
import 'package:flutter_app/MyEpic_UpdateDetails.dart';
import 'package:flutter_app/MyPollingStationViewLocation.dart';
import 'package:flutter_app/Preview.dart';
import 'package:flutter_app/TrackApplicationStatus.dart';

import 'DuplicateEpic.dart';
import 'Routes.dart';

 class MyPollingStation extends StatelessWidget {
   // This widget is the root// of your application.
   @override
   Widget build(BuildContext context) {
     return new MaterialApp(
        title: "ListView.builder",
         theme: new ThemeData(
            primarySwatch: Colors.green
         ),
        debugShowCheckedModeBanner: false,
         home: new ListViewBuilder1()
    );
   }
 }
class ListViewBuilder1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      /*  appBar: AppBar(
          title:Text("ListView.builder")
      ),*/
      body:SafeArea(
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

                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyPollingStationViewLocation(text: 'Constituency'),
                                    ));
                              },
                              child: Container(
                                height: 40.0,

                                child: Row(
                                  children: <Widget>[

                                    Padding(
                                      padding: const EdgeInsets.only(top:10.0,left: 15.0,bottom: 5.0),
                                      child: SizedBox(
                                          width: 30,
                                          height: 30,
                                          child:Image.asset("images/ic_viewdetails.png")),),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.5,
                                      child: Padding(

                                        padding: const EdgeInsets.only(left:15.0),

                                       // child: Flexible(

                                          child: Text(
                                              'Constituency',
                                              // overflow: TextOverflow.ellipsis,
                                              // softWrap: true,
                                              style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)),
                                      //  ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:10.0,left: 15.0),
                                      child:
                                      Container(
                                        alignment: Alignment.centerRight,
                                        width: MediaQuery.of(context).size.width * 0.3,
                                        child: SizedBox(

                                          width: 20,
                                          height: 20,
                                          child:Image.asset("images/arrow.png"),),
                                      ),),
                                  ],),
                              ),),
                            Divider(
                              height: 10,
                              thickness: 3,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyPollingStationViewLocation(text: 'Polling Booth'),
                                    ));
                              },
                              child: Container(
                                height: 40.0,
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top:10.0,left: 15.0,bottom: 5.0),
                                      child: SizedBox(
                                          width: 30,
                                          height: 30,
                                          child:Image.asset("images/icon_update_details.png")),),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.5,
                                      child: Padding(

                                        padding: const EdgeInsets.only(left:15.0),

                                        child: Text(
                                            'Polling Booth',
                                            style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:10.0,left: 15.0),
                                      child:
                                      Container(
                                        alignment: Alignment.centerRight,
                                        width: MediaQuery.of(context).size.width * 0.3,
                                        child: SizedBox(

                                          width: 20,
                                          height: 20,
                                          child:Image.asset("images/arrow.png"),),
                                      ),

                                    ),
                                  ],),
                              ),
                            ),
                            Divider(
                              height: 10,
                              thickness: 3,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyPollingStationViewLocation(text: 'BLO/EO Details'),
                                    ));
                              },
                              child: Container(
                                height: 40,
                                child: Row(
                                  children: <Widget>[

                                    Padding(
                                      padding: const EdgeInsets.only(top:10.0,left: 15.0,bottom: 5.0),
                                      child: Container(


                                        child: SizedBox(
                                            width: 20,
                                            height: 20,

                                            child:Image.asset("images/ic_change_adress.png")

                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:0.0,left: 8.0),
                                      child: Container(

                                        width: MediaQuery.of(context).size.width * 0.5,
                                        child: Text(
                                            'BLO/EO Details',
                                            style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                                        ),
                                      ),
                                    ),Padding(
                                      padding: const EdgeInsets.only(top:10.0,left: 15.0),
                                      child:
                                      Container(
                                        alignment: Alignment.centerRight,
                                        width: MediaQuery.of(context).size.width * 0.3,
                                        child: SizedBox(
                                          width: 20,
                                          height: 20,
                                          child:Image.asset("images/arrow.png"),),
                                      ),

                                    ),
                                  ],),
                              ),
                            ),

                          ],),),),
                    Container(
                      height: MediaQuery.of(context).size.height*0.7,

                      child:new Row(
                        children: <Widget>[

                          new Padding(padding: new EdgeInsets.only(left: 10.0 ,bottom: 30.0),),

                          Image.asset("images/banner1.png",


                              fit: BoxFit.cover),

                        ],),
                    )

                  ]),),),),),);

  }
}