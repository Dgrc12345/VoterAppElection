import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomeScreen.dart';
import 'package:flutter_app/MyEpic_UpdateDetails.dart';
import 'package:flutter_app/Preview.dart';
import 'package:flutter_app/TrackApplicationStatus.dart';

import 'DuplicateEpic.dart';
import 'Routes.dart';

// class MyEpic extends StatelessWidget {
//   // This widget is the root
//   // of your application.
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//         title: "ListView.builder",
//         theme: new ThemeData(
//             primarySwatch: Colors.green
//         ),
//         debugShowCheckedModeBanner: false,
//         home: new ListViewBuilder()
//     );
//   }
// }
class ListViewBuilder extends StatelessWidget {
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
         height: double.infinity,
         width: double.infinity,


         child: SingleChildScrollView(

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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Preview()));
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

                               child: Flexible(

                                 child: Text(

                                     'View Details',
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
                           ),

                         ),
                       ],),
                   ),),
                   Divider(
                     height: 10,
                     thickness: 3,
                   ),
                   GestureDetector(
                     onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyEpic_UpdateDetails()));
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
                                   'Update Details',
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
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrackApplicationStatus()));
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
                                   'Change in Address',
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
                   Divider(
                     height: 10,
                     thickness: 3,
                   ),
                   GestureDetector(
                     onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrackApplicationStatus()));
                     },
                     child: Container(

                         height: 40,

                       child: Row(
                         mainAxisSize: MainAxisSize.max,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[

                           Padding(
                             padding: const EdgeInsets.only(top:10.0,left: 15.0,bottom: 5.0),
                             child: Container(

                               child: SizedBox(
                                 width: 20,
                                 height: 20,

                                 child:Image.asset("images/ic_track_application.png")

                                 ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:15.0),
                             child: Container(

                               child: Container(

                                 width: MediaQuery.of(context).size.width * 0.5,
                                 child: Flexible(

                                   child: Text(
                                       'Track the Application Status',
                                       overflow: TextOverflow.ellipsis,
                                       softWrap: true,

                                       style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                                   ),
                                   flex: 1,
                                 ),
                               ),
                             ),
                           ),Padding(
                             padding: const EdgeInsets.all(8.0),
                             child:
                             Container(
                               alignment: Alignment.centerRight,

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
                             padding: const EdgeInsets.only(top:10.0,left: 15.0,bottom: 5.0),
                             child: SizedBox(
                               width: 20,
                               height: 20,

                               child:Image.asset("images/ic_duplicate.png")

                               ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(

                               width: MediaQuery.of(context).size.width * 0.5,
                               child: Text(
                                   'Duplicate Electors Photo Identity Card(EPIC)',
                                   style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                               ),
                             ),
                           ),Padding(
                             padding: const EdgeInsets.all(8.0),
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
                   Container(

                       height: 40,
                     child: Row(  mainAxisSize: MainAxisSize.max,
                       children: <Widget>[

                         Padding(
                           padding: const EdgeInsets.only(top:10.0,left: 15.0,bottom: 5.0),
                           child: SizedBox(
                             width: 20,
                             height: 20,

                             child:Image.asset("images/ic_download.png")

                             ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(

                             width: MediaQuery.of(context).size.width * 0.5,
                             child: Text(
                                 'Download e-EPIC',
                                 style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                             ),
                           ),
                         ),Padding(
                           padding: const EdgeInsets.all(8.0),
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
                   Divider(
                     height: 10,
                     thickness: 3,
                   ),
                   Container(
                       height: 40,
                     child: Row( mainAxisSize: MainAxisSize.max,
                       children: <Widget>[

                         Padding(
                           padding: const EdgeInsets.only(top:10.0,left: 15.0,bottom: 5.0),
                           child: SizedBox(
                               width: 20,
                               height: 20,

                               child:Image.asset("images/ic_delete.png")

                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(

                             width: MediaQuery.of(context).size.width * 0.5,
                             child: Text(
                                 'Deletion of Enrollment',
                                 style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                             ),
                           ),
                         ),Padding(
                           padding: const EdgeInsets.all(8.0),
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
                   Divider(
                     height: 10,
                     thickness: 3,
                   ),
                   Container(
                       height: 40,
                     child: Row(
                       mainAxisSize: MainAxisSize.max,
                       children: <Widget>[

                         Padding(
                           padding: const EdgeInsets.only(top:10.0,left: 15.0,bottom: 5.0),
                           child: SizedBox(
                               width: 20,
                               height: 20,

                               child:Image.asset("images/ic_viewdetails.png")

                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(

                             width: MediaQuery.of(context).size.width * 0.5,
                             child: Text(
                                 'Services for Divyang',
                                 style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                             ),
                           ),
                         ),Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
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
                   Container(

                     child:new Row(
                       children: <Widget>[

                         new Padding(padding: new EdgeInsets.only(left: 20.0 ,bottom: 40.0),),

                         Image.asset("images/banner1.png",


                             fit: BoxFit.cover),

                       ],),
                   )
                 ],),),),

         ]),),),),),);

  }
}