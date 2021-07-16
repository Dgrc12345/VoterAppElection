import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/Api/ApiServiceUrl.dart';
import 'package:flutter_app/LoginScreen.dart';
import 'package:flutter_app/Model/DefaultResponse.dart';
import 'package:flutter_app/Model/LoginResponse.dart';
import 'package:flutter_app/Utilitise/Utilitise.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'Api/PreferenceManager.dart';
import 'EnterOtpScreen.dart';


class LoginScreen extends StatelessWidget {
  // This widget is the root of your application.

  static const String routeName = '/My Polling Station';



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voter App',
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
  TextEditingController phoneController= TextEditingController();
  @override
  void initState() {
    super.initState();


  }
  bool validateMobile(String value) {
    bool check=true;
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      check=false;
      return check;
    }else{

    }

    return check;
  }


  Future makePostRequest() async {
    final uri = Uri.parse(Api.login);
    final headers = {'Content-Type': 'application/json'};
    Map<String, dynamic> body = {'mobile_number': phoneController.text, 'device_id':7854220,"fcm_id":5874988};
    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');
    Response response = await post(
      uri,
      headers: headers,
      body: jsonBody,
      encoding: encoding,
    );
    int statusCode = response.statusCode;
    String responseBody = response.body;
    log('datavalueinotp: $responseBody');
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 20, 134, 147),

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
                  Text('LOG IN', style: TextStyle(fontSize: 24.0,color: Colors.white,),),
                  new Padding(padding: new EdgeInsets.only(bottom: 10.0 ),),
                  Text('Enter Your Mobile Number', style: TextStyle(fontSize: 14.0,color: Colors.white,),),
                  Text('or Email ID to Login', style: TextStyle(fontSize: 14.0,color: Colors.white,),),

                  /*child: new Card(color: Colors.white,child: ListTile(leading: Icon(Icons.phone),title: Text("Mobile Number Or Email Id"),),*/

                  new Container(
                    margin: const EdgeInsets.only(top: 60.0),
                    color: Colors.white,
                    width: 300,
                    height:50,


                    // ignore: deprecated_member_use
                    child: new OutlineButton(
                      onPressed: null,
                      child:new  TextFormField(
                        controller: phoneController,
                        decoration: const InputDecoration(
                            icon: const Icon(Icons.person,),
                            hintText: 'Mobile Number Or Email ID',),
                            ),

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
                                child:Text("GENERATE OTP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,decorationStyle:TextDecorationStyle.solid),),
                                onPressed: () async{

                                  if(validateMobile(phoneController.text)){
                                  LoginResponse defaultResponse= await Api.makePostRequest(phoneController.text,"7854220","5874988");
                                  if(defaultResponse.status=true){
                                    Utilitise.showToast(context,"Login Successfully");}

                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => EnterOtpScreen()));

                                  }else{
                                    Utilitise.showToast(context,"Please Enter Vaild Mobile Number or EmailId");
                                  } },)
                          ),
                        ],

                        alignment:MainAxisAlignment.center,
                        mainAxisSize:MainAxisSize.max

                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0 ),),
                  Text("SIGN UP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0,decorationStyle:TextDecorationStyle.solid,color: Colors.white),),

                  new Container(
                    alignment: Alignment.bottomRight,

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