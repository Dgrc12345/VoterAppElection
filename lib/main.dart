import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Api/ApiServiceUrl.dart';
import 'package:flutter_app/Api/PreferenceManager.dart';
import 'package:flutter_app/Dashboard.dart';
import 'package:flutter_app/HomeScreen.dart';
import 'package:flutter_app/LoginScreen.dart';
import 'package:flutter_app/Routes.dart';
import 'package:flutter_app/cVIGILScreen.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'EnterOtpScreen.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
    debugShowCheckedModeBanner: false,

      title: 'Voter App',

      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes:  {
        Routes.MyEpic: (context) => Dashboard(),
        Routes.MyPollingStation: (context) => LoginScreen(),
        Routes.myRepersentative: (context) => Dashboard(),
        Routes.cVIGIL: (context) => cVIGILScreen("cVIGIL"),
      },
    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,  this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    asyncMethod();

  }
    // startSplashScreen();

  void asyncMethod() async {
    String LoginStatus=await PreferenceManager.getStringValuesSF("LoginStatus");
    if(LoginStatus=='true') {
      Timer(Duration(seconds: 3),
              () =>
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()
                  )
              )
      );
    }else{
      Timer(Duration(seconds: 3),
              () =>
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Dashboard()
                  )
              )
      );
    }
    // ....
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      //backgroundColor: Color.fromARGB(255, 20, 134, 147),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,

            alignment: Alignment.center,
          ),),
        child: SafeArea(

          top: false,
          bottom: false,
          child: Form(
            autovalidate: true,

            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 50.0,bottom: 40.0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child:new Row(
                      children: <Widget>[

                        new Padding(padding: new EdgeInsets.only(left: 20.0 ),),

                        Image.asset("images/eleclogo.png",
                            width: 50.0,
                            height: 50.0,

                            fit: BoxFit.cover),

                        new Padding(padding: new EdgeInsets.only(right: 90.0 ),),
                      ],),),

                  Image.asset("images/namaskaar_splash.png",
                    width: 200.0,
                    height: 50.0,
                  ),

                  /*Image.asset("assets/dart.png", width: 150.0, height: 150,),*/
                  Container(margin: EdgeInsets.all(50.0),
                    child: Image.asset("images/logo_Voter.png",
                      width: 200.0,
                      height: 200.0,
                    )
                    , ),
                  Text('Welcome to One Point Source of',
                    style: TextStyle(fontSize: 15.0,color: Colors.white,),),
                  Text(' Information & Services for Voters in India',
                    style: TextStyle(fontSize: 15.0,color: Colors.white,),),




                  new Container(
                    alignment: Alignment.bottomRight,
                    margin: const EdgeInsets.only(top: 200.0),
                    child:new Image.asset("images/niclogo.png",
                        width: 140.0,
                        height: 40.0,

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
