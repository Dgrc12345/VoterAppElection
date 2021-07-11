import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RequestForMarkingAsPWD.dart';
import 'RequestForWheelchair.dart';



class ServicesForDivyang extends StatelessWidget {
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
      appBar: AppBar(
        leading: BackButton(
            color: Colors.white
        ),
        title: Text('Services for Divyang',style: TextStyle(fontSize: 14.0,color: Colors.white)),

        backgroundColor: Color.fromARGB(255, 20, 134, 147),
      ),
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


                            Divider(
                              height: 50,
                              thickness: 5,
                            ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RequestForMakingAsPWD()));
                          },
                          child:  Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
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
                                        'Request for Marking as PWD',
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
                            ),),
                            Divider(
                              height: 50,
                              thickness: 5,
                            ),
                             GestureDetector(
                              onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => RequestForWheelchair()));
                              }, child:Container(
                              child: Row(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
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
                                        'Request for Wheelchair',
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
                            ),),
                            Divider(
                              height: 50,
                              thickness: 5,
                            ),

                            new Container(
                              margin: const EdgeInsets.only(top: 200.0,bottom: 4.0,left: 20.0,right: 20.0),
                              child:new Image.asset("images/banner1.png",


                                  fit: BoxFit.cover),),


                          ],),),),

                  ]),),),),),);

  }
}