import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pin_entry_text_field/pin_entry_text_field.dart';

import 'Api/ApiServiceUrl.dart';
import 'dart:developer';
import 'main1.dart';

void main() {
  runApp(EnterOtpScreen());
}

class EnterOtpScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.teal,

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
  var _focusNodes = List.generate(4, (index) => FocusNode());

  String otp="";





  @override
  void initState() {
    super.initState();
    // startSplashScreen();
  }




  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 134, 147),

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
              padding: const EdgeInsets.only(top: 80.0,bottom: 40.0),
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

                      ],),),


                  new Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child : Image.asset("images/logo_Voter.png",
                      width: 100.0,
                      height: 100.0,
                    ),),

                  /*Image.asset("assets/dart.png", width: 150.0, height: 150,),*/
                  new Padding(padding: new EdgeInsets.only(top: 20.0 ),),
                  Text('ENTER OTP', style: TextStyle(fontSize: 24.0,color: Colors.white,fontWeight: FontWeight.bold),),
                  new Padding(padding: new EdgeInsets.only(bottom: 10.0 ),),
                  Text('Otp sent on your', style: TextStyle(fontSize: 14.0,color: Colors.white,),),
                  Text('Mobile number/ email id', style: TextStyle(fontSize: 14.0,color: Colors.white,),),



                  /*child: new Card(color: Colors.white,child: ListTile(leading: Icon(Icons.phone),title: Text("Mobile Number Or Email Id"),),*/

                  new Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PinEntryTextField(
                        showFieldAsBox: true,
                        onSubmit: (String pin){
                          otp=pin;

                        }, // end onSubmit
                      ), // end PinEntryTextField()
                    ), // end Padding()
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
                                child:Text("Veify OTP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,decorationStyle:TextDecorationStyle.solid),),
                                onPressed: () {

                                  log('datavalueinotp: $otp');
                                  Api.makeVeifyOtpRequest("7739763684","7854220",otp);
                                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => main1()));
                                },)
                          ),
                        ],

                        alignment:MainAxisAlignment.center,
                        mainAxisSize:MainAxisSize.max

                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0 ),),
                  Text('Didnt Receive OTP?', style: TextStyle(fontSize: 14.0,color: Colors.white,),),
                  new Padding(padding: new EdgeInsets.only(top: 10.0 ),),
                  Text('RESEND OTP', style: TextStyle(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.bold),),

                  new Container(
                    alignment: Alignment.bottomRight,
                    margin: const EdgeInsets.only(top: 140.0),
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
