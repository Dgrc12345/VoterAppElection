import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SplashScreen.dart';

void main() {
  runApp(SignUpScreen());
}

class SignUpScreen extends StatelessWidget {
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
            padding: const EdgeInsets.only(top: 80.0,bottom: 40.0),
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
                new Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child : new Text('Sign Up With Mobile or Email Id',
                    style: TextStyle(fontSize: 18.0,color: Colors.white),),),

                /*Image.asset("assets/dart.png", width: 150.0, height: 150,),*/

                new Container(
                  margin: const EdgeInsets.only(top: 60.0),
                  color: Colors.white38,
                  width: 300,
                  height:50,

                  child: new OutlineButton(
                    onPressed: null,
                    child: new
                    TextFormField(
                        style: TextStyle(color: Colors.white),

                        decoration: InputDecoration(labelText: "Mobile No Or Email Id"),
                        obscureText: true),
                    borderSide: BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid ,
                      width: 1.8,
                    ),

                  ),

                ),
                Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(top: 5.0,right: 40.0),
                    child: Text(
                      'Generate Otp',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )),

                new Container(
                  margin: const EdgeInsets.only(top: 10.0,bottom: 40.0),
                  color: Colors.white38,
                  width: 300,
                  height:50,

                  child: new OutlineButton(
                    onPressed: null,
                    child: new
                    TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(labelText: "Otp"),
                        obscureText: true),
                    borderSide: BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid ,
                      width: 1.8,
                    ),

                  ),

                ),

                new Container(
                  margin: const EdgeInsets.only(top: 20.0,bottom: 4.0),
                  child: new ButtonBar(


                      children:[
                        SizedBox(
                            width: 300,
                            height:50,
                            child: RaisedButton(

                              textColor: Colors.indigo,

                              color: Colors.yellow,
                              child:Text("SIGN UP",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,decorationStyle:TextDecorationStyle.solid),),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SplashScreen()));
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
                    onPressed: null,
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
