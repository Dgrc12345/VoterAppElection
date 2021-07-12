import 'package:flutter/material.dart';

import 'EnterOtpScreen.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  // This widget is the root of your application.

  static const String routeName = '/My Polling Station';

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

  @override
  void initState() {
    super.initState();
    // startSplashScreen();
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


                    child: new OutlineButton(
                      onPressed: null,
                      child: new
                      TextFormField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(labelText: "Mobile Number Or Email ID"),
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
                                child:Text("GENERATE OTP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,decorationStyle:TextDecorationStyle.solid),),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => EnterOtpScreen()));
                                },)
                          ),
                        ],

                        alignment:MainAxisAlignment.center,
                        mainAxisSize:MainAxisSize.max

                    ),
                  ),
                  /* new Container(
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

                  ),*/

                  /*new Container(
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
                  ),*/
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