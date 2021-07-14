import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AppDrawer.dart';
import 'DuplicateEpic.dart';
import 'MyEpicChangeAddress1.dart';
import 'MyEpic_UpdateDetails.dart';
import 'Preview.dart';
import 'TrackApplicationStatus.dart';
import 'cVIGILSubmitComplain.dart';
import 'cVIGIL_Anonymous_complain.dart';
import 'cVIGIL_Main_Complainlist.dart';


class cVIGILScreen extends StatelessWidget {
  static const String routeName = '/cVIGIL';
  late final String title;
  cVIGILScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: new AppBar(
        title: Text(title),
      ),
       /* backgroundColor: Colors.white,
        appBar: new AppBar(title: Text("View Detail"),),*/

    body: SingleChildScrollView(


      child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => cVIGILSubmitComplain()));
                      },
                      child: Container(
                        height: 40.0,

                        child: Row(
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(top:10.0,left: 10.0,bottom: 5.0),
                              child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child:Image.asset("images/ic_cvigil_voter.png")),),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(

                                padding: const EdgeInsets.only(left:15.0),

                                child: Flexible(

                                  child: Text(
                                      'Submit Complain',
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10.0,left: 10.0),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => cVIGIL_Anonymous_complain()));
                      },
                      child: Container(
                        height: 40.0,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:10.0,left: 10.0,bottom: 5.0),
                              child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child:Image.asset("images/ic_cvigil_complain.png")),),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(

                                padding: const EdgeInsets.only(left:15.0),

                                child: Text(
                                    'Anonymous Complaint Submit',
                                    style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10.0,left: 10.0),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => cVIGIL_Main_Complainlist("View List of Complaints")));
                      },
                      child: Container(
                        height: 40,
                        child: Row(
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(top:10.0,left: 10.0,bottom: 5.0),
                              child: Container(


                                child: SizedBox(
                                    width: 20,
                                    height: 20,

                                    child:Image.asset("images/ic_cvigil_list_complain.png")

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:0.0,left: 8.0),
                              child: Container(

                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                    'View List of Complaints',
                                    style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                                ),
                              ),
                            ),Padding(
                              padding: const EdgeInsets.only(top:10.0,left: 10.0),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DuplicateEpic()));
                      },
                      child: Container(
                        height: 40,
                        child: Row(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(top:10.0,left: 10.0,bottom: 5.0),
                              child: SizedBox(
                                  width: 20,
                                  height: 20,

                                  child:Image.asset("images/ic_cvigil_voter.png")

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(

                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                    'Cancel the raised Complaint',
                                    style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                                ),
                              ),
                            ),Padding(
                              padding: const EdgeInsets.all(5.0),
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

                    Container(
                      height: MediaQuery.of(context).size.height*0.7,
                      child:new Row(
                        children: <Widget>[

                          new Padding(padding: new EdgeInsets.only(left: 10.0 ,bottom: 30.0),),

                          Image.asset("images/banner1.png",


                              fit: BoxFit.cover),

                        ],),
                    )
                  ],),),),

          ]),),);
  }}