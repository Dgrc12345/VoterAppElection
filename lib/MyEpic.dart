import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyEpic extends StatelessWidget {
  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "ListView.builder",
        theme: new ThemeData(
            primarySwatch: Colors.green
        ),
        debugShowCheckedModeBanner: false,
        home: new ListViewBuilder()
    );
  }
}
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
         padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
         child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[


           new Container(



             child: Card(

               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(7.0),
               ),


               elevation: 10,
               child: Column(

                 mainAxisSize: MainAxisSize.max,

                 children: <Widget>[
                   Row(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                     children: <Widget>[

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: SizedBox(
                           width: 20,
                           height: 20,

                           child:Image.asset("images/ic_viewdetails.png")

                           ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(
                             'View Details',
                             style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                         ),
                       ),Padding(
                         padding: const EdgeInsets.all(8.0),
                         child:
                         SizedBox(
                             width: 20,
                             height: 20,
                           child:Image.asset("images/arrow.png"),),

                       ),
                     ],),
                   Divider(
                     height: 50,
                     thickness: 5,
                   ),
                   Row(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                     children: <Widget>[

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: SizedBox(
                           width: 20,
                           height: 20,

                           child:Image.asset("images/ic_viewdetails.png")

                           ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(
                             'View Details',
                             style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                         ),
                       ),Padding(
                         padding: const EdgeInsets.all(8.0),
                         child:
                         SizedBox(
                             width: 20,
                             height: 20,
                           child:Image.asset("images/arrow.png"),),

                       ),
                     ],),
                   Divider(
                     height: 50,
                     thickness: 5,
                   ),
                   Row(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                     children: <Widget>[

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: SizedBox(
                           width: 20,
                           height: 20,

                           child:Image.asset("images/ic_viewdetails.png")

                           ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(
                             'View Details',
                             style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                         ),
                       ),Padding(
                         padding: const EdgeInsets.all(8.0),
                         child:
                         SizedBox(
                             width: 20,
                             height: 20,
                           child:Image.asset("images/arrow.png"),),

                       ),
                     ],),
                   Divider(
                     height: 50,
                     thickness: 5,
                   ),
                   Row(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                     children: <Widget>[

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: SizedBox(
                           width: 20,
                           height: 20,

                           child:Image.asset("images/ic_viewdetails.png")

                           ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(
                             'View Details',
                             style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                         ),
                       ),Padding(
                         padding: const EdgeInsets.all(8.0),
                         child:
                         SizedBox(
                             width: 20,
                             height: 20,
                           child:Image.asset("images/arrow.png"),),

                       ),
                     ],),
                   Divider(
                     height: 50,
                     thickness: 5,
                   ),
                   Row(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                     children: <Widget>[

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: SizedBox(
                           width: 20,
                           height: 20,

                           child:Image.asset("images/ic_viewdetails.png")

                           ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(
                             'View Details',
                             style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                         ),
                       ),Padding(
                         padding: const EdgeInsets.all(8.0),
                         child:
                         SizedBox(
                             width: 20,
                             height: 20,
                           child:Image.asset("images/arrow.png"),),

                       ),
                     ],),
                   Divider(
                     height: 50,
                     thickness: 5,
                   ),
                   Row(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                     children: <Widget>[

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: SizedBox(
                           width: 20,
                           height: 20,

                           child:Image.asset("images/ic_viewdetails.png")

                           ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(
                             'View Details',
                             style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w200)
                         ),
                       ),Padding(
                         padding: const EdgeInsets.all(8.0),
                         child:
                         SizedBox(
                             width: 20,
                             height: 20,
                           child:Image.asset("images/arrow.png"),),

                       ),
                     ],),
                   Divider(
                     height: 50,
                     thickness: 5,
                   ),

                 ],),),),

         ]),),),),),);

  }
}