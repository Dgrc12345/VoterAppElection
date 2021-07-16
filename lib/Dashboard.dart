import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/AppDrawer.dart';
import 'package:flutter_app/HomeScreen.dart';
import 'package:flutter_app/Model/UserDetails.dart';
import 'package:flutter_app/MyPollingStation.dart';

import 'EnterOtpScreen.dart';



class Dashboard extends StatefulWidget {
  static const String routeName = '/My Epic';


  @override
  _State createState() => _State();
}

class _State extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: new AppBar(
        backgroundColor:Color.fromARGB(109, 20, 134, 147),
        //title: Image.asset("images/logo_Voter.png"),
          title:Text("Home"),
      ),

      body: SafeArea(

        top: false,
        bottom: false,
        child: Form(
          autovalidate: true,

          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage("images/bg.png"),
                fit: BoxFit.cover,

                alignment: Alignment.center,
              ),),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: FractionalOffset.center,

                    child:new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Center(
                            child: new Container(
                              child: new ButtonBar(
                                children:[
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.3,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen("Home")));
                                      },
                                      child: new Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(7.0),
                                          ),

                                          color: Colors.lightGreen,
                                          elevation: 7,

                                          child: Column(

                                              mainAxisSize: MainAxisSize.max,

                                              children: <Widget>[
                                                Column(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                                                  children: <Widget>[

                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: SizedBox(
                                                        width: 30,
                                                        height: 30,

                                                        child: ImageIcon(
                                                          AssetImage("images/myepic.png"),

                                                          color: Color(
                                                              0xFFCB74DE),

                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Text(
                                                          '  My Epic      \n    ',textAlign:TextAlign.center,
                                                          style: TextStyle(fontSize: 12.0,color: Colors.black87)
                                                      ),
                                                    ),
                                                  ],),]
                                          )
                                      ),
                                    ),),
                                ],



                              ),),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: new Container(

                              child: new ButtonBar(


                                children:[
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.3,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen("Home")));
                                        },
                                        child: new Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(7.0),
                                            ),

                                            color: Colors.lightGreen,
                                            elevation: 7,
                                            child: Column(

                                                mainAxisSize: MainAxisSize.max,

                                                children: <Widget>[
                                                  Column(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                                                    children: <Widget>[

                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: SizedBox(
                                                          width: 30,
                                                          height: 30,

                                                          child: ImageIcon(
                                                            AssetImage("images/polling.png"),

                                                            color: Color(0xFFE4F558),

                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Text(
                                                            'My Polling Station',textAlign:TextAlign.center,
                                                            style: TextStyle(fontSize: 12.0,color: Colors.black87)
                                                        ),
                                                      ),
                                                    ],),]
                                            )
                                        ),)
                                  ),
                                ],

                                alignment:MainAxisAlignment.center,


                              ),),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: new Container(
                              child: new ButtonBar(


                                children:[
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.3,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen("HOME")));
                                      },
                                      child: new Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(7.0),
                                          ),

                                          color: Colors.lightGreen,
                                          elevation: 7,

                                          child: Column(

                                              mainAxisSize: MainAxisSize.max,

                                              children: <Widget>[
                                                Column(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                                                  children: <Widget>[

                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: SizedBox(
                                                        width: 30,
                                                        height: 30,

                                                        child: ImageIcon(
                                                          AssetImage("images/myrepresentative.png"),

                                                          color: Color(0xFF5787D9),

                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Text(
                                                          'My Representative',textAlign:TextAlign.center,
                                                          style: TextStyle(fontSize: 12.0,color: Colors.black)
                                                      ),
                                                    ),
                                                  ],),]
                                          )
                                      ),
                                    ),),
                                ],



                              ),),
                          ),
                        )



                      ],),
                  ),





                  new Container(
                    height: 100.0,
                    margin: const EdgeInsets.only(top: 7.0,bottom: 4.0,left: 20.0,right: 20.0),

                    child: Card(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),

                      color: Colors.black87,
                      elevation: 10,
                      child: Column(

                        mainAxisSize: MainAxisSize.max,

                        children: <Widget>[
                          Row(   mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.max,
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.all(8.0),

                                child: SizedBox(
                                  width: 60,
                                  height: 60,

                                  child: ImageIcon(
                                    AssetImage("images/eye.png"),

                                    color: Color(0xFFF0F1F1),

                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),

                                child: Text(
                                    'Citizen Vigilance',
                                    style: TextStyle(fontSize: 18.0,color: Colors.white70)
                                ),

                              ),Padding(
                                padding: const EdgeInsets.all(8.0),

                                child: ImageIcon(
                                  AssetImage("images/arrow.png"),

                                  color: Color(0xFFF0F1F1),

                                ),
                              ),

                            ],),

                        ],),),),
                  new Container(
                    height: 130.0,
                    margin: const EdgeInsets.only(top: 7.0,bottom: 4.0,left: 20.0,right: 20.0),
                    child: Card(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(  mainAxisSize: MainAxisSize.max,
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.all(8.0),

                                child: Text(
                                    'Live Election News ',
                                    style: TextStyle(fontSize: 15.0,color: Colors.black54)
                                ),

                              ),
                            ],),
                          Row(  mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Expanded(
                                child: Center(

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Text(
                                          'Ec Rolls out Digital Voter ID Cards ',
                                          style: TextStyle(fontSize: 18.0,color: Colors.teal,fontWeight: FontWeight.w200)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(

                                child: Container(

                                  child: const Align(
                                    alignment: Alignment.topRight,
                                    child: ImageIcon(
                                      AssetImage("images/arrow.png"),
                                      color: Color(0xFF313B3B),

                                    ),
                                  ),
                                ),
                              ),

                            ],),


                        ],),),),

                  Container(


                    child:new Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          child: new Container(
                              width: 150.0,
                              height: 130.0,
                              child :  Column(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SizedBox(


                                        child:Image.asset("images/electiondate_bg.png", width: 150.0,
                                          height: 100.0,fit: BoxFit.fill,)




                                    ),
                                  ),
                                  Container(
                                    width: 150.0,
                                    height: 25.0,

                                    decoration: BoxDecoration(

                                      color: Colors.black54,



                                    ),

                                    child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Text(
                                          'Election Date',textAlign:TextAlign.center,
                                          style: TextStyle(fontSize: 12.0,color: Colors.white)
                                      ),
                                    ),
                                  ),
                                ],)
                          ),
                        ),
                        Expanded(
                          child: new Container(
                              width: 150.0,
                              height: 130.0,
                              child :  Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SizedBox(


                                        child:Image.asset("images/electiondate_bg.png", width: 150.0,
                                          height: 100.0,fit: BoxFit.fill,)),
                                  ),
                                  Container(
                                    width: 150.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      color: Colors.black54,



                                    ),

                                    child: Padding(

                                      padding: const EdgeInsets.all(1.0),
                                      child: Text(
                                          'Voter Trunout',textAlign:TextAlign.center,
                                          style: TextStyle(fontSize: 12.0,color: Colors.white)
                                      ),),),],)),
                        ),






                      ],),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(top: 7.0,bottom: 4.0,left: 20.0,right: 20.0),
                    child:new Image.asset("images/banner1.png",


                        fit: BoxFit.cover),),

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }


}