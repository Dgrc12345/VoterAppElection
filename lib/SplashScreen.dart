import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/LoginScreen.dart';
import 'package:flutter_app/SignUpScreen.dart';

import 'SplashScreen.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
   // startSplashScreen();
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 134, 147),

      body: SafeArea(

        top: false,
        bottom: false,
       child: Form(
        autovalidate: true,

        child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 120.0,bottom: 40.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
            child:new Row(
            children: <Widget>[

              new Padding(padding: new EdgeInsets.only(left: 20.0 ),),
              Spacer(),
            Image.asset("images/eleclogo.png",
                width: 50.0,
                height: 50.0,

                fit: BoxFit.cover),
              Spacer(),
             Text('भारत  निर्वाचन आयोग ',
             style: TextStyle(fontSize: 15.0,color: Colors.white),),
              Spacer(),
              new Padding(padding: new EdgeInsets.only(right: 90.0 ),),
             ],),),

            Text('Election Commission of India',
            style: TextStyle(fontSize: 15.0,color: Colors.white),),

            /*Image.asset("assets/dart.png", width: 150.0, height: 150,),*/
            Container(child:
            Text(
              'Voter App',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),), margin: EdgeInsets.all(20.0),),
            Text('Single point access',
              style: TextStyle(fontSize: 15.0,color: Colors.white,),),
            Text(' to',
              style: TextStyle(fontSize: 15.0,color: Colors.white,),),
            Text(' Service of voters of india',
              style: TextStyle(fontSize: 15.0,color: Colors.white,),),
            new Container(
              margin: const EdgeInsets.only(top: 102.0,bottom: 4.0),
              child: new ButtonBar(


                children:[
                  SizedBox(
                  width: 300,
                      height:50,
                child: RaisedButton(

                  textColor: Colors.indigo,

                  color: Colors.yellow,
                  child:Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,decorationStyle:TextDecorationStyle.solid),),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                  },)
                  ),
                ],

                alignment:MainAxisAlignment.center,
                mainAxisSize:MainAxisSize.max

             ),
           ),
            new Container(
                margin: const EdgeInsets.only(top: 10.0,bottom: 40.0),
              color: Colors.white38,
              width: 300,
              height:50,

                child: new OutlineButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                child: new Text('NEW USER ? SIGN UP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0,color: Colors.white,),),


                  borderSide: BorderSide(
                    color: Colors.white,
                    style: BorderStyle.solid ,
                    width: 1.8,
                  ),

               ),

              ),

          new Container(
            margin: const EdgeInsets.only(top: 120.0,bottom: 10.0),
            child:new Row(


              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(left: 20.0 ,right: 20.0),),
                Text('Instructions', style: TextStyle(fontSize: 12.0,color: Colors.white,),),
                Spacer(), // <-- Use this
                Text('FAQs' ,style: TextStyle(fontSize: 12.0,color: Colors.white,),),
                Spacer(),

                Text('Press Release', style: TextStyle(fontSize: 12.0,color: Colors.white,),),
                Spacer(),
              ],

                mainAxisSize:MainAxisSize.max
            ),
          ),
        new Container(
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.only(top: 20.0),
          child:new Image.asset("images/niclogo.png",
                width: 140.0,
                height: 40.0,

                fit: BoxFit.cover),),





           ],
          ),
         ),
        ),
      ),
    );
  }
}
