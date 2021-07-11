import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomeScreen.dart';
import 'package:flutter_app/MyEpicChangeAddress1.dart';
import 'package:flutter_app/MyEpic_UpdateDetails.dart';
import 'package:flutter_app/Preview.dart';
import 'package:flutter_app/TrackApplicationStatus.dart';

import 'DuplicateEpic.dart';
import 'Routes.dart';

class MyPollingStationViewLocation extends StatelessWidget {

  final String text;
  MyPollingStationViewLocation({required this.text}) ;
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

                                        child: Flexible(

                                          child: Text(
                                              text,
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: true,
                                              style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)),
                                        ),
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
                              ),
                            ),

                          ],),),),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top:50.0,left: 25.0,right: 25.0),
                        height: MediaQuery.of(context).size.height*0.1,
                        width: MediaQuery.of(context).size.width,

                        child: FlatButton(
                            child: Image.asset("images/ic_change_adress.png"),
                          color:Color.fromARGB(75, 44, 141, 153),
                          textColor: Colors.black,
                          height: 60.0,
                          onPressed: () {},
                        ),

                      ),
                    ),
                    Container(margin: const EdgeInsets.only(left: 25.0,right: 25.0),
                      width: MediaQuery.of(context).size.width,
                      child: FlatButton(
                          child: Text("Software Technology Park Of India Patna Bihar"),
                        color:Color.fromARGB(158, 11, 92, 102),
                        textColor: Colors.black,
                        height: 60.0,
                        onPressed: () {},
                      ),

                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.7,

                      child:new Row(
                        children: <Widget>[

                          new Padding(padding: new EdgeInsets.only(left: 20.0 ,bottom: 40.0),),

                          Image.asset("images/banner1.png",


                              fit: BoxFit.cover),

                        ],),
                    )

                  ]),),),),),);

  }
}