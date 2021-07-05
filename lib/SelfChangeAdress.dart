import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/SignUpScreen.dart';

import 'HomeScreen.dart';
import 'SplashScreen.dart';
import 'main1.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
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

      String dropdownValue = 'One';

       List <String> spinnerItems = [
       'One',
      'Two',
      'Three',
      'Four',
      'Five'
      ] ;

      @override
        void initState() {
        super.initState();
        // startSplashScreen();
     }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 226, 226),

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
                Text('State', style: TextStyle(fontSize: 12.0,color: Colors.white,),),
                Container(
                  color: Colors.white60,
                  width: 300,
                  height:50,
                  child :
                  Column(children: <Widget>[

                    DropdownButton<String>(
                      value: dropdownValue,  isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.red, fontSize: 18),

                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),

                  ]),),
                Text('District', style: TextStyle(fontSize: 12.0,color: Colors.white,),),
                Container(
                  color: Colors.white60,
                  width: 300,
                  height:50,
                  child :
                  Column(children: <Widget>[

                    DropdownButton<String>(
                      value: dropdownValue,  isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.red, fontSize: 18),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),

                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),

                  ]),),



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
                        keyboardType: TextInputType.number,
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
                        keyboardType: TextInputType.visiblePassword,
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
                              child:Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,decorationStyle:TextDecorationStyle.solid),),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => main1()));
                              },)
                        ),
                      ],

                      alignment:MainAxisAlignment.center,
                      mainAxisSize:MainAxisSize.max

                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
