import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/AppDrawer.dart';
import 'package:flutter_app/HomeScreen.dart';

import 'EnterOtpScreen.dart';


class Dashboard extends StatelessWidget {
  static const String routeName = '/My Epic';
  late final String title;
  Dashboard(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: AppDrawer(),
      appBar: new AppBar(
        title: Text(title),
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


                    child:new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Container(

                          child: new ButtonBar(
                              children:[
                                SizedBox(
                                    width: 110,
                                    height:110,

                                    child:GestureDetector(
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
                                                          AssetImage("images/myepic.png"),

                                                          color: Color(0xFFCF5CE3),

                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Text(
                                                          'My Epic',textAlign:TextAlign.center,
                                                          style: TextStyle(fontSize: 12.0,color: Colors.black87)
                                                      ),
                                                    ),
                                                  ],),]
                                          )
                                      ),

                                    ),
                                ),
                              ],

                              alignment:MainAxisAlignment.center,


                          ),),
                        new Container(

                          child: new ButtonBar(


                              children:[
                                SizedBox(
                                    width: 110,
                                    height:110,
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
                                    )
                                ),
                              ],

                              alignment:MainAxisAlignment.center,


                          ),),new Container(

                          child: new ButtonBar(


                              children:[
                                SizedBox(
                                    width: 110,
                                    height:110,
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
                                                style: TextStyle(fontSize: 12.0,color: Colors.black87)
                                            ),
                                          ),
                                        ],),]
                                    )
                                ),),
                              ],



                          ),)



                      ],),
                  ),





                  new Container(
                      height: 100.0,
                    margin: const EdgeInsets.only(top: 7.0,bottom: 4.0,left: 20.0,right: 20.0),

                    child: Card(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),

                      color: Colors.black54,
                      elevation: 10,
                      child: Column(

                        mainAxisSize: MainAxisSize.max,

                        children: <Widget>[
                          Row(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
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
                          Row(   mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    'Ec Rolls out Digital Voter ID Cards ',
                                    style: TextStyle(fontSize: 18.0,color: Colors.teal,fontWeight: FontWeight.w200)
                                ),
                              ),Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ImageIcon(
                                  AssetImage("images/arrow.png"),

                                  color: Color(0xFF313B3B),

                                ),
                              ),
                            ],),


                         ],),),),

                  Container(


                    child:new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Container(
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
                        new Container(
                          width: 150.0,
                          height: 130.0,
                            child :  Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
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
                                        'Voter Trunout',textAlign:TextAlign.center,
                                        style: TextStyle(fontSize: 12.0,color: Colors.white)
                                    ),),),],)),






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